# w2cApp (Flutter)

This repository contains the Flutter version of the w2cApp. 

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
python3 scripts/sanitize_all_swagger.py
```

Generate clients/models with:

```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

Generated code outputs to `lib/data/api/generated`.

## Notes

- App scheme: `w2capp`
- Android/iOS bundleId: `com.echoo.w2c`
