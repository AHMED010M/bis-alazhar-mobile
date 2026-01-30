# Assets Directory

This directory contains all static assets used in the BIS Alazhar Mobile Application.

## Structure

```
assets/
├── images/          # App images and graphics
│   ├── logo.png
│   ├── splash.png
│   └── ...
└── icons/           # Custom icons
    ├── schedule.png
    ├── study.png
    └── ...
```

## Usage

To use assets in your Flutter code:

```dart
Image.asset('assets/images/logo.png')
```

## Adding New Assets

1. Place files in appropriate directory
2. Update `pubspec.yaml`:
   ```yaml
   flutter:
     assets:
       - assets/images/
       - assets/icons/
   ```
3. Run `flutter pub get`

## Image Guidelines

- Use PNG for images with transparency
- Use JPEG for photos
- Optimize images before adding (use tools like TinyPNG)
- Provide multiple resolutions:
  - 1x: assets/images/logo.png
  - 2x: assets/images/2.0x/logo.png
  - 3x: assets/images/3.0x/logo.png

## Icon Guidelines

- Size: 512x512 px (app icon)
- Format: PNG with transparency
- Use Android Asset Studio for app icons
