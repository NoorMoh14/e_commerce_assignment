# e_commerce_assignment


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Flutter App Installation Setup Start

## Tools & Setup

### Prerequisite

- Flutter & Dart SDK
- Any IDE (Android Studio recommended), Visual Studio Code, or IntelliJ IDEA
- To edit this project, you must have Flutter and Dart installed and configured successfully on your computer.
- Set up your editor - Install the Flutter and Dart plugins.
- Follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install/) for detailed instructions.

### Android Studio – Windows

1. Download [Android Studio](https://developer.android.com/studio/).
2. Get the [Flutter SDK](https://flutter.dev/docs/get-started/install).
3. Learn more about [Android Studio](https://developer.android.com/studio/intro/).

#### Step 1: Get the Flutter SDK

- Download the installation bundle to get the latest stable release of the Flutter SDK.
- Extract the zip file and place the contained flutter in the desired installation location for the Flutter SDK.

#### Step 2: Update your path

- If you wish to run Flutter commands in the regular Windows console, update the PATH environment variable.

**Important:** Close and reopen any existing console windows for these changes to take effect.

#### Step 3: Run flutter doctor

From a console window that has the Flutter directory in the path (see above), run the following command to see if there are any platform dependencies you need to complete the setup:
c:\src\flutter>flutter doctor


### Android Studio – macOS

1. Download [Android Studio](https://developer.android.com/studio/).
2. Download [Xcode](https://apps.apple.com/us/app/xcode/id497799835?mt=12).
3. Get the [Flutter SDK](https://flutter.dev/docs/get-started/install).
4. Learn more about [Android Studio](https://developer.android.com/studio/intro/).

#### Step 1: Get the Flutter SDK

- Download the installation bundle to get the latest stable release of the Flutter SDK.
- Download SDK and extract the downloaded file.
- Copy the extracted folder and paste it to your desired location (for example, Documents\flutter).

#### Step 2: Update your path

**Important:** Path variable needs to be updated to access “flutter” command from the terminal.

- For current terminal window only: `export PATH="$PATH:`pwd`/flutter/bin"`
- Permanently: Open or create .bash_profile file, then append: `export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"`

Run this command on terminal "source $HOME/.bash_profile" to refresh PATH variables.
Then check whether our SDK is successfully installed or not.
You are now ready to run Flutter commands in the Flutter Console!

Run "flutter doctor" into terminal, If you are getting check list of flutter sdk requirements, it means SDK is successfully installed on your machine. and you can start building flutter apps on your machine.

# Getting Started (Build & Run)

**Important:** All below steps must be followed to build and run the application.

## Download Project

Download and find your project folder, use your preferred IDE (Android Studio / Visual Studio Code / IntelliJ IDEA) to run the project.

## Get Dependencies

After loading the project successfully, run the following command in the terminal to install all the dependencies listed in the `pubspec.yaml` file in the project's root directory or just click on "Pub get" in the `pubspec.yaml` file if you don't want to use the command.
``` bash
flutter pub get
Important
```
All below steps are must be followed to build and run application

# Build and Run App

1. Locate the main Android Studio toolbar.
2. In the target selector, select an Android device for running the app. If none are listed as available, select Tools > Android > AVD Manager and create one there. For details, see [Managing AVDs](https://developer.android.com/studio/run/managing-avds).
3. Click the run icon in the toolbar, or invoke the menu item Run > Run.
4. After the app build completes, you’ll see the app on your device.

If you don’t use Android Studio or IntelliJ, you can use the command line to run your application using the following command:

**Important:** Below step requires Flutter path to be set in your Environment variables. See [Flutter Installation Guide for Windows](https://flutter.dev/docs/get-started/install/windows).

```bash
flutter run  
 ```
You will see below like screen after you have build your app successfully.
# Project Structure & Features

## Project Structure

- **images:** `e_commerce_assignment/assets` as well as `appIcon` are stored here.
- **lib:** Application main file and folder are located here.
    - **Screens:** Full Apps UI Code can be found here.
    - **Components:** Reusable widgets can be found here.
    - **config:** All constant values are located here.
    - **utils:** All helper widgets are located here.
    - **Main:** All the routes are declared here.
- **Pubspec.yaml:** Application name and other project dependencies can be found here.

## Application Features

- Clean Code and a well-structured project.
- Single code base for both Android & iOS.
- 60 FPS Support for both Android & iOS.
- Fully responsive UI.
- Best UI & UX.
- Great animation.

