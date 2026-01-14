# w2cApp (Flutter)

This project is the Flutter version of the w2cApp. It follows a Feature-first / Clean Architecture approach, utilizing Riverpod for state management and generated code for API interactions.

## Project Overview

*   **Framework:** Flutter (SDK ^3.10.4)
*   **Language:** Dart 3.x
*   **State Management:** `flutter_riverpod` (^2.6.1)
*   **Navigation:** `go_router` (^14.2.0)
*   **Networking:** `dio` (^5.7.0), `chopper` (^8.0.3)
*   **Code Generation:** `build_runner`, `swagger_dart_code_generator`, `json_serializable`

## Development Workflow

### Setup

1.  **Install Flutter:** Ensure you have Flutter 3.38.x installed.
2.  **Dependencies:** Run `flutter pub get`.
3.  **Environment:** Copy `.env.example` to `.env.dev` (and `.env.test` for testing).

### Running the App

```sh
flutter run
```

### Code Generation

This project heavily relies on code generation for API clients and JSON serialization.

**Regenerate all files:**
```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

**Swagger/API Generation:**
If the API specs in `docs/api/` change:
1.  **Sanitize Specs:**
    ```sh
    python3 scripts/sanitize_all_swagger.py
    ```
2.  **Run Build Runner:**
    ```sh
    flutter pub run build_runner build --delete-conflicting-outputs
    ```
    *Generated code is located in `lib/data/api/generated/` and is excluded from linting.*

## Project Structure

*   `lib/`
    *   `main.dart`: Entry point, sets up `ProviderScope`, `EnvConfig`, and `Router`.
    *   `core/`: Shared utilities and core logic.
        *   `auth/`: Authentication logic (State, persistence).
        *   `env/`: Environment configuration.
        *   `navigation/`: Router configuration (`go_router`).
        *   `storage/`: Local storage wrappers (`secure_storage`).
    *   `data/`: Data layer.
        *   `api/generated/`: **DO NOT EDIT.** Generated API clients and models.
        *   `repositories/`: Repositories that wrap generated APIs and map to domain models.
    *   `features/`: Feature-based modules (e.g., `auth`, `home`). Contains UI and feature-specific logic.
*   `docs/api/`: Swagger/OpenAPI specifications.
*   `scripts/`: Utility scripts (e.g., Swagger sanitization).

## Coding Conventions

*   **State Management:** Use `flutter_riverpod`.
    *   Use `StateNotifier` for complex state logic (e.g., `AuthController`).
    *   Expose Providers globally or within `core` for shared resources.
*   **Navigation:** Use `go_router`. Define routes in `lib/core/navigation/app_router.dart`.
*   **API Integration:**
    *   Do not use raw `Dio` calls in UI.
    *   Use generated `Chopper` clients within Repositories.
    *   Repositories should map API DTOs (generated) to cleaner Domain Models.
    *   Handle errors and parsing robustly within Repositories (see `ProductRepository` as reference).
*   **Styling:** Follow `flutter_lints` rules.
*   **Price Formatting:** NEVER display currency codes (e.g., "USD") directly. ALWAYS use `PriceUtils.getCurrencySymbol(currency)` from `lib/shared/utils/price_utils.dart` to display symbols (e.g., "$").
*   **Testing:** Run tests with `flutter test`.

## Key Commands

| Command | Description |
| :--- | :--- |
| `flutter run` | Run the app in debug mode. |
| `flutter pub get` | Install dependencies. |
| `flutter pub run build_runner build` | Generate code (run after changing models/APIs). |
| `flutter analyze` | Analyze code for lints and errors. |
