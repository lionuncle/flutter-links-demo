# flutter_link_feature_app

The Link Manager app is designed to simplify the management of website links and social media profiles for users. It offers an intuitive interface for adding, editing, and removing links, along with features like URL validation, error handling, and persistent storage using Hive.

## Getting Started

This project is a starting point for a Flutter application.

## Features

1. ## Two Tabs
    - **Empty Tab**: Reserved for future functionalities.
    - **Links Tab:** Displays existing website links.

2. ## Floating "+" Button
    - Always visible for quick access to add new links.

3. ## Resizable Bottom Sheet
    - Opens on clicking the "+" button, occupying 25% of the screen width.

4. ## Save Button:
    - Positioned at the center bottom of the bottom sheet.

5. ## Link Input Fields
    - **URL Field:** Validates URL format.
    - **Custom Title Field (Optional):** Allows custom titles for links.

6. ## Link Display
    - Automatically populates with domain/website name icons.
    - Supports up to three links, with a URL limit of 25 characters.

7. ## Editing and Removal
    - Users can edit and remove links, with changes reflected immediately.

8. ## Error Handling
    - Alerts for invalid URLs or exceeding link limits.

9. ## Persistent Storage
    - Uses Hive for local database storage.

## Usage

1. Clone the repository.
2. Ensure Flutter is installed.
3. Run `flutter pub get` to install dependencies.
4. Run the app using `flutter run`.

## Dependencies

- auto_size_text: ^3.0.0
- cupertino_icons: ^1.0.6
- flutter_screenutil: ^5.9.0
- get: ^4.6.6
- url_launcher: ^6.2.5
- hive: ^2.2.3
- hive_flutter: ^1.1.0
- path_provider: ^2.1.2
