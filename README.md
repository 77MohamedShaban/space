# Space Explorer 🚀

Space Explorer is a modern Flutter application designed to provide an immersive experience for exploring our solar system. Users can browse through different planets, view detailed information, and interact with high-quality 3D models of each celestial body.

## ✨ Features

*   **Interactive 3D Models**: View and interact with 3D models of planets using `model_viewer_plus`.
*   **Detailed Planet Information**: Get comprehensive data for each planet, including:
    *   Distance from the Sun
    *   Length of day
    *   Orbital period
    *   Radius, Mass, and Gravity
    *   Surface Area
*   **Beautiful UI/UX**: A dark-themed, space-inspired design with smooth transitions and custom typography.
*   **Custom Splash Screen**: A native splash screen that sets the tone for the space journey.
*   **Responsive Browsing**: Easily navigate through planets using an intuitive horizontal scroll (PageView).

## 🛠️ Tech Stack

*   **Framework**: [Flutter](https://flutter.dev/)
*   **Language**: [Dart](https://dart.dev/)
*   **3D Rendering**: [model_viewer_plus](https://pub.dev/packages/model_viewer_plus)
*   **Fonts**: [Google Fonts (Inter)](https://pub.dev/packages/google_fonts)
*   **Splash Screen**: [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)

## 📁 Project Structure

```text
lib/
├── core/
│   ├── models/         # Data models (e.g., Planet model)
│   ├── utils/          # App constants, colors, and text styles
│   └── widgets/        # Reusable custom widgets
├── screens/            # Application screens (Login, Home, Details)
└── main.dart           # Entry point of the application
```

## 🚀 Getting Started

### Prerequisites

*   Flutter SDK installed on your machine.
*   Android Studio / VS Code with Flutter & Dart plugins.
*   An Android/iOS Emulator or physical device.

### Installation

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

## 📸 Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/07ca17de-ffd1-4ee8-83c5-b7187a65ae4d" height="300"/>
  <img src="https://github.com/user-attachments/assets/f9b5e71a-db50-41f8-aece-22d75b427c07" height="300" />
  <img src="https://github.com/user-attachments/assets/a0ca7bb7-16db-4b96-a08c-90bef14799c3" height="300"/>
  <img src="https://github.com/user-attachments/assets/826d4272-f88b-4aeb-89b5-bbc9306a0c12" height="300" />
</p>

## ⚙️ Configuration

The project uses `flutter_native_splash.yaml` for splash screen configuration. To modify the splash screen:
1. Update `flutter_native_splash.yaml`.
2. Run `dart run flutter_native_splash:create`.

## 🤝 Contributing

Contributions are welcome! If you find any issues or want to add new features, feel free to open a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
Made with ❤️ by [Mohamed Shaban]
