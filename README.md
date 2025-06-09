# Items-App

A cross-platform application for managing, tracking, and organizing items efficiently. Built using Dart (Flutter), with backend/core logic utilizing C++ and CMake for optimal performance. Additional platform integrations are handled via Swift (iOS), C (native), and HTML (web).

## Features

- Add, edit, and remove items
- Organize items into categories or lists
- Search and filter items quickly
- Cross-platform support: mobile, desktop, and web
- High-performance backend powered by C++ modules
- Modern and intuitive user interface

## Technology Stack

- **Frontend:** Dart (Flutter) for UI and app logic
- **Core/Backend:** C++, CMake, C for performance-critical features
- **Platform Integrations:** Swift (iOS), HTML (web)
- **Other:** Minor components in other languages as needed

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [CMake](https://cmake.org/download/)
- Platform-specific toolchains (Xcode for iOS, Android Studio for Android, etc.)

### Clone the Repository

```bash
git clone https://github.com/Udai-Senevirathne/Items-App.git
cd Items-App
```

### Build and Run

#### Flutter (Dart) App

```bash
flutter pub get
flutter run
```

#### Native Modules

1. Build C++ core logic using CMake:
   ```bash
   mkdir build && cd build
   cmake ..
   make
   ```
2. Ensure the built libraries are linked to the Flutter project as per platform instructions.

#### Web

```bash
flutter build web
```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

## Acknowledgements

- Flutter and Dart teams
- Open-source C++ and C libraries
- Platform toolchain maintainers

---

*Built with ❤️ by Udai-Senevirathne and contributors.*
