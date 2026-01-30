# BIS Alazhar Mobile App - Setup Guide

## Prerequisites

Before you begin, ensure you have the following installed:

1. **Flutter SDK** (3.0.0 or higher)
   - Download from: https://flutter.dev/docs/get-started/install
   - Verify installation: `flutter --version`

2. **Dart SDK** (comes with Flutter)
   - Verify: `dart --version`

3. **Android Studio** or **VS Code**
   - Android Studio: https://developer.android.com/studio
   - VS Code: https://code.visualstudio.com/

4. **Git**
   - Download from: https://git-scm.com/downloads

5. **Android SDK** (for Android development)
   - Installed via Android Studio

6. **Xcode** (for iOS development, macOS only)
   - Install from Mac App Store

---

## Installation Steps

### 1. Clone the Repository

```bash
git clone https://github.com/AHMED010M/bis-alazhar-mobile.git
cd bis-alazhar-mobile
```

### 2. Install Flutter Dependencies

```bash
flutter pub get
```

### 3. Configure API Base URL

Open `lib/core/constants/app_constants.dart` and update the base URL:

```dart
static const String baseUrl = 'https://your-api-url.com';
```

### 4. Verify Flutter Installation

```bash
flutter doctor
```

Fix any issues reported by Flutter Doctor.

---

## Running the App

### On Android Emulator

1. Start Android Studio
2. Open AVD Manager
3. Create/Start an Android Virtual Device
4. Run:
   ```bash
   flutter run
   ```

### On Physical Device (Android)

1. Enable Developer Mode on your device
2. Enable USB Debugging
3. Connect device via USB
4. Run:
   ```bash
   flutter devices  # Verify device is connected
   flutter run
   ```

### On iOS Simulator (macOS only)

1. Open Xcode
2. Open Simulator
3. Run:
   ```bash
   flutter run
   ```

---

## Building the App

### Android APK

```bash
flutter build apk --release
```

APK location: `build/app/outputs/flutter-apk/app-release.apk`

### Android App Bundle (for Play Store)

```bash
flutter build appbundle --release
```

### iOS (macOS only)

```bash
flutter build ios --release
```

---

## Project Structure

```
bis-alazhar-mobile/
├── android/              # Android native files
├── ios/                  # iOS native files
├── lib/                  # Flutter source code
│   ├── core/             # Core functionality
│   ├── features/         # Feature modules
│   ├── shared/           # Shared components
│   └── main.dart         # App entry point
├── assets/               # Images, icons, etc.
├── docs/                 # Documentation
├── pubspec.yaml          # Flutter dependencies
└── README.md             # Project README
```

---

## Configuration

### Backend API

Update the API base URL in:
```
lib/core/constants/app_constants.dart
```

### App Name & Package

**Android:**
- Edit `android/app/src/main/AndroidManifest.xml`

**iOS:**
- Edit `ios/Runner/Info.plist`

---

## Troubleshooting

### Issue: Dependencies not installing
```bash
flutter clean
flutter pub get
```

### Issue: Build errors
```bash
flutter clean
flutter pub get
flutter run
```

### Issue: Android license not accepted
```bash
flutter doctor --android-licenses
```

### Issue: iOS CocoaPods issues (macOS)
```bash
cd ios
pod install
cd ..
flutter run
```

---

## Development Tips

1. **Hot Reload**: Press `r` in terminal while app is running
2. **Hot Restart**: Press `R` in terminal
3. **Format Code**: `flutter format lib/`
4. **Analyze Code**: `flutter analyze`
5. **Run Tests**: `flutter test`

---

## VS Code Setup

### Recommended Extensions

1. Flutter
2. Dart
3. Flutter Widget Snippets
4. Awesome Flutter Snippets

### launch.json

Create `.vscode/launch.json`:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Flutter",
      "type": "dart",
      "request": "launch",
      "program": "lib/main.dart"
    }
  ]
}
```

---

## Need Help?

Open an issue on GitHub: [Issues](https://github.com/AHMED010M/bis-alazhar-mobile/issues)

---

**Happy Coding! 🚀**
