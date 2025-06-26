# Smart Hub - Items App

A Flutter application that displays a collection of electronic items in an elegant grid layout. This app demonstrates modern Flutter development practices using BLoC pattern for state management.

## 📱 Features

- **Splash Screen**: Animated welcome screen with smooth transitions
- **Items Grid**: Displays electronic items (smartphones, laptops, headphones, etc.) in a responsive grid layout
- **Item Details**: Detailed view for each item with images and descriptions
- **BLoC Pattern**: State management using flutter_bloc for scalable architecture
- **Material Design 3**: Modern UI following Material Design guidelines
- **Cross-platform**: Supports Android, iOS, Web, Windows, macOS, and Linux

## 🛠️ Tech Stack

- **Flutter SDK**: 3.7.2+
- **State Management**: flutter_bloc (^9.1.1)
- **UI Framework**: Material Design 3
- **Architecture**: BLoC Pattern
- **Platforms**: Android, iOS, Web, Desktop (Windows, macOS, Linux)

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  flutter_bloc: ^9.1.1
  flutter_native_splash: ^2.4.6

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.7.2 or higher
- Dart SDK
- Android Studio / VS Code
- Device emulator or physical device

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd items_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   └── item.dart            # Item data model
├── screens/
│   ├── splash_screen.dart   # Animated splash screen
│   ├── item_list_screen.dart # Main items grid screen
│   └── item_detail_screen.dart # Item details screen
└── blocs/
    └── item/
        ├── item_bloc.dart   # Business logic component
        ├── item_event.dart  # BLoC events
        └── item_state.dart  # BLoC states
```

## 🎯 Key Components

### BLoC Pattern Implementation
- **ItemBloc**: Manages item loading and selection
- **ItemEvent**: Defines user actions (LoadItems, SelectItem)
- **ItemState**: Represents different app states (Loading, Loaded, Error)

### Screens
- **SplashScreen**: Animated introduction with app initialization
- **ItemListScreen**: Grid layout displaying all items
- **ItemDetailScreen**: Detailed view for individual items

## 🔧 Development

### Running Tests
```bash
flutter test
```

### Building for Production
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

## 📱 Screenshots

The app features a clean, modern interface with:
- Animated splash screen with Smart Hub branding
- Responsive grid layout for items
- Material Design 3 theming
- Smooth navigation transitions

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📚 Learn More

- [Flutter Documentation](https://docs.flutter.dev/)
- [BLoC Pattern Guide](https://bloclibrary.dev/)
- [Material Design 3](https://m3.material.io/)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)
