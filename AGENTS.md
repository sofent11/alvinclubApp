# AGENTS.md - Development Guidelines for w2cApp

This file contains build commands, code style guidelines, and architectural patterns for agentic coding agents working on this Flutter e-commerce application.

## Build & Development Commands

### Core Commands
```bash
# Install dependencies
flutter pub get

# Run the app in development mode
flutter run

# Build for production
flutter build apk --release
flutter build ios --release

# Run tests
flutter test

# Run a single test file
flutter test test/widget_test.dart

# Run tests with coverage
flutter test --coverage

# Code generation (API clients, models, serializers)
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode for code generation
flutter pub run build_runner watch --delete-conflicting-outputs

# Code analysis and linting
flutter analyze

# Format code
dart format .

# Clean build artifacts
flutter clean
```

### API Generation Workflow
```bash
# Sanitize swagger specs (when raw specs change)
python3 scripts/sanitize_all_swagger.py

# Generate API clients and models
flutter pub run build_runner build --delete-conflicting-outputs
```

## Architecture Overview

### Project Structure
```
lib/
├── core/                 # Core utilities and singletons
│   ├── auth/            # Authentication state management
│   ├── env/             # Environment configuration
│   ├── error/           # Error handling utilities
│   ├── navigation/      # App routing configuration
│   ├── storage/         # Local storage abstractions
│   └── theme/           # App theming
├── data/                # Data layer
│   ├── api/            # Generated API clients
│   └── repositories/   # Repository implementations
├── features/           # Feature modules
│   ├── auth/          # Authentication flows
│   ├── catalog/       # Product catalog
│   ├── cart/          # Shopping cart
│   ├── checkout/      # Checkout process
│   └── shared/        # Feature-specific utilities
└── shared/            # Cross-cutting concerns
    └── widgets/       # Reusable UI components
```

### State Management
- Uses **Riverpod** for state management
- Controllers extend `StateNotifier` for business logic
- Providers follow naming convention: `featureControllerProvider`
- Authentication state managed in `core/auth/auth_store.dart`

### API Layer
- Generated clients in `lib/data/api/generated/` (excluded from analysis)
- Repository pattern in `lib/data/repositories/`
- Error handling with custom `ApiError` class
- Dio for HTTP client with interceptors

## Code Style Guidelines

### Import Organization
```dart
// Dart core imports first
import 'dart:convert';

// Flutter imports next
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Package imports (alphabetical)
import 'package:dio/dio.dart';
import 'package:cached_network_image/cached_network_image.dart';

// Project imports (relative, organized by layer)
import '../../core/auth/auth_store.dart';
import '../../core/error/api_error.dart';
import '../data/api/swagger_client.dart';
import 'widgets/input_field.dart';
```

### Naming Conventions
- **Files**: snake_case (e.g., `auth_store.dart`, `input_field.dart`)
- **Classes**: PascalCase (e.g., `AuthController`, `InputField`)
- **Variables**: camelCase (e.g., `authController`, `isLoading`)
- **Constants**: UPPER_SNAKE_CASE (e.g., `SECURE_STORAGE_KEY`)
- **Private members**: prefix with `_` (e.g., `_storage`, `_persist()`)

### Type Definitions
- Use `typedef` for complex function signatures and data maps
```dart
typedef JsonMap = Map<String, dynamic>;
typedef ApiResponse<T> = Future<Result<T>>;
```

### Class Structure
```dart
class ExampleClass {
  // 1. Constants
  static const String _storageKey = 'example-key';
  
  // 2. Constructor (const when possible)
  const ExampleClass({
    required this.requiredField,
    this.optionalField,
  });
  
  // 3. Final fields
  final String requiredField;
  final String? optionalField;
  
  // 4. Getters (computed properties)
  bool get isValid => requiredField.isNotEmpty;
  
  // 5. Public methods
  Future<void> performAction() async {
    // Implementation
  }
  
  // 6. Private methods
  Future<void> _persist() async {
    // Implementation
  }
  
  // 7. Factory constructors (fromJson, copyWith)
  factory ExampleClass.fromJson(JsonMap json) {
    return ExampleClass(
      requiredField: json['requiredField'] as String,
      optionalField: json['optionalField'] as String?,
    );
  }
  
  ExampleClass copyWith({
    String? requiredField,
    String? optionalField,
  }) {
    return ExampleClass(
      requiredField: requiredField ?? this.requiredField,
      optionalField: optionalField ?? this.optionalField,
    );
  }
}
```

### Error Handling
- Use custom `ApiError` class for API-related errors
- Repository methods should throw `ApiError` on failures
- Use `normalizeApiError()` helper function for Dio exceptions
- UI layers catch errors and show user-friendly messages

```dart
try {
  final result = await repository.getData();
  return Result.success(result);
} on ApiError catch (e) {
  return Result.failure(e.message);
} catch (e) {
  return Result.failure('Unexpected error occurred');
}
```

### UI Component Guidelines
- Use shared widgets from `lib/shared/widgets/`
- Follow theming system with `context.appColors`
- Components should be reusable and accept configuration via constructor
- Use `const` constructors where possible for performance

```dart
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant = ButtonVariant.primary,
  });

  final String label;
  final VoidCallback? onPressed;
  final ButtonVariant variant;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    // Implementation using theme colors
  }
}
```

### Null Safety
- Use nullable types (`String?`) for optional fields
- Provide default values or handle null cases appropriately
- Use null-aware operators (`?.`, `??`) safely
- Use `required` keyword for non-nullable constructor parameters

### Async/Await
- Always use `async/await` for Future-based operations
- Handle errors in async operations with try-catch blocks
- Use `Future<void>` for methods that don't return values
- Avoid blocking the UI thread - use proper async patterns

### Testing
- Write widget tests for UI components
- Use `flutter_test` package
- Test providers and controllers with unit tests
- Mock dependencies using `mockito` or similar packages

```dart
testWidgets('CustomButton renders correctly', (WidgetTester tester) async {
  await tester.pumpWidget(
    MaterialApp(
      home: CustomButton(label: 'Test', onPressed: () {}),
    ),
  );
  
  expect(find.text('Test'), findsOneWidget);
});
```

## Environment Configuration
- Environment files: `.env.dev`, `.env.test`, `.env.example`
- Use `flutter_dotenv` for environment variable loading
- Never commit sensitive data to version control
- Environment loading happens in `main.dart`

## Code Generation
- API clients generated from Swagger/OpenAPI specs
- JSON serialization with `json_annotation` and `json_serializable`
- Run `flutter pub run build_runner build` after modifying models
- Generated files are in `lib/data/api/generated/` (excluded from analysis)

## Performance Considerations
- Use `const` constructors for widgets that don't change
- Implement proper image caching with `cached_network_image`
- Use `ListView.builder` for long lists
- Avoid unnecessary widget rebuilds with proper provider usage
- Use `AutomaticKeepAliveClientMixin` for state preservation when needed

## Security
- Store sensitive data in `flutter_secure_storage`
- Never log tokens, passwords, or other sensitive information
- Use HTTPS for all API calls
- Validate and sanitize user inputs
- Implement proper authentication and authorization checks