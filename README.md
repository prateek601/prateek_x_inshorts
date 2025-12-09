# Prateek x Inshorts - Movie Discovery App

A Flutter application for discovering and exploring movies using The Movie Database (TMDB) API. Built with Clean Architecture principles and BLoC pattern for state management.

## 🎬 Features

### Core Features

- **Movie Discovery**

  - Browse Now Playing movies
  - Browse Trending movies
  - Switch between movie types with a dropdown selector
  - Infinite scroll pagination with automatic load more
  - Error handling with retry functionality for load more operations

- **Search**

  - Real-time movie search with 500ms debounce
  - Search results with pagination
  - Load more functionality with error handling

- **Movie Details**

  - Comprehensive movie information including:
    - Title, release date, rating, and runtime
    - Overview and tagline
    - Genres and production companies
    - High-quality backdrop and poster images
  - Share movies via deep links

- **Bookmarks**

  - Save favorite movies locally
  - View all bookmarked movies
  - Persistent storage using Hive

- **Deep Linking**
  - Custom URL scheme: `prateekxinshorts://movie/{movieId}`
  - Share movies with deep links
  - Navigate directly to movie details from external links

## 🏗️ Architecture

The app follows **Clean Architecture** principles with clear separation of concerns:

```
lib/
├── data/           # Data layer (API, local storage, models)
├── domain/         # Business logic layer (repositories, use cases, exceptions)
├── presentation/   # UI layer (pages, BLoC, widgets)
├── utils/          # Utilities (API client, storage, deep links)
├── injection/      # Dependency injection setup
└── navigation/     # App routing configuration
```

### State Management

- **BLoC (Business Logic Component)** pattern for state management
- Freezed for immutable state classes
- Reactive UI updates with `BlocBuilder` and `BlocListener`

## 🛠️ Tech Stack

### Core Dependencies

- **flutter_bloc** (^9.1.1) - State management
- **freezed** (^3.1.0) - Immutable data classes and unions
- **get_it** (^9.2.0) - Dependency injection
- **go_router** (^14.2.0) - Declarative routing
- **dio** (^5.9.0) - HTTP client
- **retrofit** (^4.6.0) - Type-safe HTTP client generator
- **hive** (^2.2.3) - Fast, lightweight NoSQL database
- **fpdart** (^1.2.0) - Functional programming utilities
- **connectivity_plus** (^7.0.0) - Network connectivity checking
- **share_plus** (^10.1.2) - Share content from the app

### Development Dependencies

- **build_runner** (^2.5.4) - Code generation
- **freezed** (^3.1.0) - Code generation for freezed
- **json_serializable** (^6.9.5) - JSON serialization
- **retrofit_generator** (^9.7.0) - Retrofit code generation

## 📦 Setup Instructions

### Prerequisites

- Flutter SDK (^3.7.2)
- Dart SDK
- Android Studio / Xcode (for mobile development)
- Git

### Installation

1. **Clone the repository**

   ```bash
   git clone <repository-url>
   cd prateek_x_inshorts
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Generate code**

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

### Code Generation

Whenever you modify freezed classes or retrofit interfaces, regenerate the code:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

For watch mode (auto-regenerate on file changes):

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

## 📁 Project Structure

```
lib/
├── main.dart                          # App entry point
├── src/
│   ├── data/
│   │   ├── local/                     # Local data sources (Hive)
│   │   └── models/                    # Data models (Movie, MovieDetails, etc.)
│   ├── domain/
│   │   ├── exceptions/                # Custom exceptions
│   │   ├── repository/                # Repository interfaces and implementations
│   │   └── usecase/                   # Business logic use cases
│   ├── injection/
│   │   └── injection.dart             # Dependency injection setup
│   ├── navigation/
│   │   └── app_router.dart            # GoRouter configuration
│   ├── presentation/
│   │   ├── bookmarks_page/           # Bookmarks feature
│   │   ├── details_page/              # Movie details feature
│   │   ├── home_page/                 # Home/Discover feature
│   │   ├── search_page/               # Search feature
│   │   ├── main_navigation/           # Bottom navigation
│   │   └── widgets/                   # Reusable widgets
│   └── utils/
│       ├── api_client/                # API client setup (Retrofit + Dio)
│       ├── deep_link/                 # Deep linking service
│       └── storage/                   # Hive storage utilities
└── test/                              # Unit and widget tests
```

## 🔑 Key Components

### BLoC Components

- **HomeBloc**: Manages movie discovery (Now Playing/Trending)
- **SearchBloc**: Handles movie search with debouncing
- **DetailsBloc**: Manages movie detail fetching
- **BookmarksBloc**: Handles bookmark operations

### State Management Features

- **Error Handling**: Comprehensive error states with retry functionality
- **Loading States**: Separate loading states for initial load and pagination
- **Load More Error**: Dedicated error handling for pagination failures with retry button

### Data Layer

- **MovieRepository**: Fetches movies from TMDB API with caching
- **BookmarksRepository**: Manages local bookmark storage
- **HiveStorage**: Persistent local storage for bookmarks

### API Integration

- **Base URL**: `https://api.themoviedb.org/3`
- **Authentication**: Bearer token authentication
- **Endpoints**:
  - Now Playing movies
  - Trending movies
  - Movie search
  - Movie details

## 🔗 Deep Linking

The app supports deep linking with the custom URL scheme:

```
prateekxinshorts://movie/{movieId}
```

### Usage

- Share movies: Movies can be shared with deep links from the details page
- External navigation: Open the app directly to a movie details page
- Universal links: Supports both custom scheme and HTTPS universal links

### Configuration

Deep links are configured in:

- **Android**: `android/app/src/main/AndroidManifest.xml`
- **iOS**: Configured in Xcode project settings

## 🎨 UI/UX Features

- **Material Design 3**: Modern Material Design components
- **Responsive Layout**: Adapts to different screen sizes
- **Error States**: User-friendly error messages with retry options
- **Loading Indicators**: Clear loading states for better UX
- **Infinite Scroll**: Smooth pagination with automatic load more
- **Pull to Refresh**: Refresh content by pulling down (where applicable)

## 🧪 Testing

Run tests with:

```bash
flutter test
```

## 📝 Development Notes

### Adding New Features

1. Create models in `lib/src/data/models/`
2. Add repository methods in `lib/src/domain/repository/`
3. Implement repository in `lib/src/domain/repository/`
4. Create BLoC in `lib/src/presentation/{feature}/bloc/`
5. Create view in `lib/src/presentation/{feature}/`
6. Register dependencies in `lib/src/injection/injection.dart`
7. Add routes in `lib/src/navigation/app_router.dart`

### Code Generation

Remember to run build_runner after:

- Modifying freezed classes
- Adding new retrofit endpoints
- Changing JSON serialization annotations

### State Management Best Practices

- Use freezed for immutable states
- Keep BLoC logic focused and testable
- Handle all error cases with appropriate UI feedback
- Use `isLoadMoreError` for pagination error handling

## 📄 License

This project is a Flutter application for educational/demonstration purposes.

## 🙏 Acknowledgments

- **The Movie Database (TMDB)** for providing the movie data API
- Flutter community for excellent packages and documentation

---

**Note**: This app uses The Movie Database (TMDB) API. Make sure to respect their terms of service and API usage guidelines.
