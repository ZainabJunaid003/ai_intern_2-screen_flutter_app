# Book List App (Flutter)

A simple two-screen Flutter app.

- **List screen:** shows a list of books (loaded asynchronously).
- **Detail screen:** opens when you tap a book and shows its details, with a button to go back.

## What it demonstrates

- Dart: variables, null safety (`String?`, `??`), lists and maps, classes, `async`/`await`
- Flutter: widgets, `Column`, `Row`, `ListView`, and navigation with `Navigator.push` / `Navigator.pop`

## Project structure

```
lib/
  main.dart                    app entry point
  models/book.dart             the Book class
  data/book_repository.dart    async fetchBooks() with sample data
  screens/list_screen.dart     screen 1
  screens/detail_screen.dart   screen 2
test/widget_test.dart          widget test for the navigation
```

## How to run

1. Install Flutter and run `flutter doctor` to check your setup.
2. Get the dependencies:
   ```
   flutter pub get
   ```
3. Start the app on Chrome, an emulator, or a connected phone:
   ```
   flutter run
   ```

## Run the tests

```
flutter test
```
