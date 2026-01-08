# w2cApp (Flutter Migration)

This repo initializes the Flutter version of the w2cApp, following `flutter_migrate.md`.

## Setup

- Install Flutter 3.38.x
- Copy or update env files: `.env.dev`, `.env.test`, `.env.example`
- Run `flutter pub get`

## Run

```sh
flutter run
```

## API Generation

Swagger/OpenAPI specs are stored under `docs/api/` (raw) and `docs/api/sanitized/` (cleaned for codegen).

If the raw spec changes, re-sanitize the combo file:

```sh
python3 scripts/sanitize_swagger.py docs/api/swaggerApiCombo.json docs/api/sanitized/swaggerApiCombo.json
```

Generate clients/models with:

```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

Generated code outputs to `lib/data/api/generated`.

## Notes

- App scheme: `w2capp`
- Android/iOS bundleId: `com.echoo.w2c`
