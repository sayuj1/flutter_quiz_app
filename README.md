# Flutter Quiz App

A Flutter based quiz application that tests users' knowledge with a series of interactive questions.

## Project Overview

This project is a mobile application built using the Flutter framework. It features a custom quiz interface, state management for tracking answers, and utilizes custom assets and fonts for a polished user experience.

## Prerequisites

Before setting up the project, ensure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version 3.10.7 or later)
- Dart SDK (included with Flutter)
- An IDE (VS Code or Android Studio) with Flutter and Dart plugins installed

## Setup Instructions

Follow these steps to set up the project locally:

1. **Navigate to the project directory**:
   ```bash
   cd flutter_quiz_app.
   ```

2. **Install Dependencies**:
   Fetch the required packages listed in `pubspec.yaml`:
   ```bash
   flutter pub get
   ```

## How to Run Locally

You can run the app on a connected device or emulator.

1. **Check connected devices**:
   ```bash
   flutter devices
   ```

2. **Run the application**:
   ```bash
   flutter run
   ```

## Testing in Emulator

To test the application in an Android Emulator or iOS Simulator:

### Android Emulator
1. Open **Android Studio**.
2. Go to **Device Manager**.
3. Create a new Virtual Device if you haven't already (e.g., Pixel 6 API 33).
4. Click the **Play** button to launch the emulator.
5. Once the emulator is running and visible on your screen, run:
   ```bash
   flutter run
   ```

### iOS Simulator (macOS only)
1. Open the **Simulator** app from your Applications or via Spotlight search.
2. Select a device (e.g., iPhone 14) from **File > Open Simulator**.
3. Once the simulator is running, run:
   ```bash
   flutter run
   ```

The application should build and launch on your selected emulator. You can use `r` in the terminal to hot reload changes.
