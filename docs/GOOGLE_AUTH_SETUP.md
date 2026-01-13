# Google Sign-In Setup Guide

To enable native Google Sign-In on Android and iOS, you must configure the project with your Firebase/Google Cloud credentials.

## 1. Android Setup

1.  **Firebase Console**: Go to your project settings in the [Firebase Console](https://console.firebase.google.com/).
2.  **Add App**: Add an Android app with package name: `com.echoo.w2c`.
3.  **SHA-1 Fingerprint**:
    -   Run `cd android && ./gradlew signingReport` to get your SHA-1 fingerprint (debug).
    -   Add this fingerprint to your Android app in Firebase Console. **This is required for Google Sign-In.**
4.  **Download Config**: Download `google-services.json`.
5.  **Place File**: Move the file to `android/app/google-services.json`.

## 2. iOS Setup

1.  **Firebase Console**: Add an iOS app with bundle ID: `com.echoo.w2c`.
2.  **Download Config**: Download `GoogleService-Info.plist`.
3.  **Place File**: Move the file to `ios/Runner/GoogleService-Info.plist`.
    -   **Important**: You must add this file via Xcode (drag and drop into `Runner` folder) to ensure it is included in the build target.
4.  **Info.plist Configuration**:
    -   Open `ios/Runner/Info.plist`.
    -   Copy the `REVERSED_CLIENT_ID` from your `GoogleService-Info.plist`.
    -   Add a URL Type with this scheme:

    ```xml
    <key>CFBundleURLTypes</key>
    <array>
        <dict>
            <key>CFBundleTypeRole</key>
            <string>Editor</string>
            <key>CFBundleURLSchemes</key>
            <array>
                <!-- Replace with your REVERSED_CLIENT_ID -->
                <string>com.googleusercontent.apps.YOUR-CLIENT-ID-REVERSED</string>
            </array>
        </dict>
        <!-- Keep existing schemes -->
        <dict>
            <key>CFBundleURLSchemes</key>
            <array>
                <string>w2capp</string>
            </array>
        </dict>
    </array>
    ```

## 3. Verify

Run the app on a device or emulator:
```bash
flutter run
```
Click "Continue with Google". It should open the native system dialog.
