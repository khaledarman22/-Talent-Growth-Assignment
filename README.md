# Flutter Weather Forecast App

A robust, feature-rich weather application built with Flutter, demonstrating modern Android/iOS development practices, Clean Architecture, and efficient state management.

## Overview

This application allows users to search for and view weather forecasts for different cities. It is designed to showcase:
- **MVVM Clean Architecture**: Separation of concerns for maintainability and scalability.
- **Robust State Management**: Using **Bloc/Cubit** for predictable state transitions.
- **Offline Capabilities**: Local caching with **Hive** to view data without an internet connection.
- **Dynamic UI**: Smooth animations, theme switching (Light/Dark), and responsive design.

## Download & Screenshots

## Download APK:
[Download App-release.apk](https://drive.google.com/file/d/1sBPA9VXDNnG07MaWZsWbOZWCEbWYDn7O/view?usp=sharing)

## Screenshots:
- [Screenshot 1](https://drive.google.com/file/d/1_Tsib-1qw5btJuR50hDF-PhamxI-21oU/view?usp=sharing)
- [Screenshot 2](https://drive.google.com/file/d/19e0NGzksqfyYAUgUCYPkD6t4lkWQ4pu4/view?usp=sharing)

## Features

### Core Features (Must Haves)
- **MVVM Architecture**: Structured with clear separation between Data, Domain, and Presentation layers.
- **State Management**: Implemented using `flutter_bloc` for managing UI states (Loading, Success, Error).
- **API Integration**: Fetches real-time weather data (Temperature, Humidity, Wind Speed, Conditions) from OpenWeatherMap.
- **Dynamic UI**: Real-time updates with loading indicators and error handling.
- **Error Handling**: User-friendly error messages and retry mechanisms.
- **City Selection**: Search functionality to view weather for any city.
- **Local Caching**: Caches weather data using **Hive** for offline access.
- **Unit Testing**: Includes unit tests for business logic.

### Bonus Features
- **Advanced UI**: Custom animations and transitions for a premium feel.
- **Theme Switching**: Toggle between Light and Dark modes.
- **Flavors**: Configured for `dev` and `prod` environments.
- **Secure Storage**: Encrypted local data storage.

## Tech Stack

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: flutter_bloc
- **Networking**: Dio (with interceptors & logging)
- **Dependency Injection**: get_it & injectable
- **Local Storage**: Hive (NoSQL database)
- **Environment Management**: flutter_dotenv
- **Code Generation**: build_runner, freezed, json_serializable

## Getting Started

### Prerequisites
- Flutter SDK (Latest Stable)
- Dart SDK

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/khaledarman22/-Talent-Growth-Assignment.git
   cd flutter_assignment
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Setup Environment Variables**
   Create a `.env` file in the root directory and add your OpenWeatherMap API key:
   ```env
   API_KEY=your_api_key_here
   ```

4. **Run the App**
   
   Run in **Development** mode:
   ```bash
   flutter run -t lib/main_dev.dart
   ```

   Run in **Production** mode:
   ```bash
   flutter run -t lib/main_prod.dart
   ```

## Architecture

The project follows the **Clean Architecture** principles:

- **Presentation Layer**: UI (Pages, Widgets) and State Management (Blocs/Cubits).
- **Domain Layer**: Entities, Use Cases, and Repository Interfaces (Pure Dart, no external dependencies).
- **Data Layer**: Repository Implementations, Data Sources (Remote/Local), and Models.

## Testing

Run unit tests with:
```bash
flutter test
```

---
**Developed for E-Motion Assignment**
