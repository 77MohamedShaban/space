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

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/space-explorer.git
    cd space-explorer
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Generate Native Splash Screen:**
    ```bash
    dart run flutter_native_splash:create
    ```

4.  **Run the app:**
    ```bash
    flutter run
    ```

## 📸 Screenshots

| Login Screen | Home Screen | Planet Details |
| :---: | :---: | :---: |
| ![Login](https://via.placeholder.com/200x400?text=Login+Screen) | ![Home](https://via.placeholder.com/200x400?text=Home+Screen) | ![Details](https://via.placeholder.com/200x400?text=Details+Screen) |

## ⚙️ Configuration

The project uses `flutter_native_splash.yaml` for splash screen configuration. To modify the splash screen:
1. Update `flutter_native_splash.yaml`.
2. Run `dart run flutter_native_splash:create`.

## 🤝 Contributing

Contributions are welcome! If you find any issues or want to add new features, feel free to open a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
Made with ❤️ by [Your Name]
