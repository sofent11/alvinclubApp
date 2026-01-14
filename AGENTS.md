# AGENTS.md - Development Guidelines for w2cApp

This file contains build commands, code style guidelines, and architectural patterns for agentic coding agents working on this Flutter e-commerce application.

> **CRITICAL**: The migration from React Native is complete. This Flutter codebase is the single source of truth. Do NOT refer to legacy React Native code.

## 1. Build & Verification Commands

Use these commands for all development tasks. Always verify your changes before finishing.

```bash
# Core
flutter pub get               # Install dependencies
flutter analyze               # Run linter (REQUIRED before committing)
dart format .                 # Format code (REQUIRED before committing)
flutter test                  # Run all tests
flutter test test/features/   # Run specific feature tests

# Build
flutter run                   # Dev mode
flutter build apk --release   # Android release build
flutter build ios --release   # iOS release build

# Code Generation (Run after editing models or API specs)
# Watch mode (recommended during dev)
flutter pub run build_runner watch --delete-conflicting-outputs
# One-off build
flutter pub run build_runner build --delete-conflicting-outputs
```

## 2. Architecture & Patterns

### Directory Structure
Reflects a feature-first architecture.
```text
lib/
├── core/                 # App-wide singletons (Auth, Env, Theme, Routing)
├── data/                 # Repositories & API clients (Generated code lives here)
├── features/             # Business logic modules (Auth, Cart, Catalog)
├── shared/               # Reusable UI widgets & extensions
└── main.dart             # App entry point (Environment & State hydration)
```

### State Management (Riverpod)
- **Providers**: Use `Provider`, `StateNotifierProvider`, or `FutureProvider`.
- **Naming**: Suffix with `Provider` (e.g., `authControllerProvider`).
- **Hydration**: Critical global state (like Auth) is hydrated **before** `runApp` in `main.dart`.
  ```dart
  // main.dart pattern
  final container = ProviderContainer();
  await container.read(authControllerProvider.notifier).hydrate();
  runApp(UncontrolledProviderScope(container: container, child: const MyApp()));
  ```

### API Layer
- **Generation**: Swagger specs in `docs/api/` -> `lib/data/api/generated/`.
- **Workflow**:
  1. Update raw specs in `docs/api/`.
  2. Run `python3 scripts/sanitize_all_swagger.py` to clean specs.
  3. Run `flutter pub run build_runner build` to regenerate Dart code.
- **Error Handling**: 
  - Repositories MUST catch Dio exceptions and throw `ApiError`.
  - Use `normalizeApiError(e)` helper.

## 3. Code Style & Conventions

### Imports
Order imports to separate layers clearly:
1. Dart core (`dart:convert`)
2. Flutter/Riverpod (`package:flutter/...`)
3. Third-party packages (`package:dio/...`)
4. Internal absolute/relative imports (`../../core/...`)

### Naming
- **Files**: `snake_case.dart`
- **Classes**: `PascalCase`
- **Variables/Methods**: `camelCase`
- **Constants**: `UPPER_SNAKE_CASE`

### Coding Standards
- **Null Safety**: Use `required` for mandatory fields. Avoid `!`. Use `?` and `??`.
- **Async**: Always use `async/await` instead of `.then()`.
- **Types**: Explicitly type public APIs. Use `typedef` for complex structures.
- **Widgets**: 
  - Extract complex UI into small, `const` widgets in `shared/widgets`.
  - Use `context.appColors` (Theme extension) instead of hardcoded colors.

### Example Component
```dart
class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
  });

  final Product product;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: context.appColors.surface, // Theme usage
        child: Text(product.name),
      ),
    );
  }
}
```

## 4. Testing Strategy
- **Structure**: `test/` directory mirrors `lib/` (e.g., `lib/features/auth` -> `test/features/auth`).
- **Unit Tests**: Test `StateNotifier` logic and Repositories. Mock dependencies using `mockito`.
- **Widget Tests**: Test UI components in isolation using `pumpWidget`.

## 5. Environment & Security
- **Config**: Loaded via `EnvConfig.load()` in `main.dart` using `flutter_dotenv`.
- **Files**: `.env.dev` (default), `.env.test`, `.env.prod`.
- **Secrets**: NEVER commit `.env` files.
- **Storage**: Use `flutter_secure_storage` for tokens/credentials.

## 6. Global Rules
- **Price Formatting**: NEVER display currency codes (e.g., "USD") directly. ALWAYS use `PriceUtils.getCurrencySymbol(currency)` from `lib/shared/utils/price_utils.dart` to display symbols (e.g., "$").

## 7. Common Tasks Checklist
- [ ] **New Feature**: Create directory in `features/`. Add `StateNotifier`. Add Repository.
- [ ] **New API Endpoint**: Update Swagger spec -> Sanitize -> Run build_runner.
- [ ] **UI Change**: Update Widget. Verify Dark/Light mode.
- [ ] **Pre-Commit**: Run `flutter analyze` and `flutter test`.
