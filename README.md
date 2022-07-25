# NewsAppsCodingChallenge

This is a simple app which displays a list of news articles and allows users to read the first paragraph on a seperate screen.

## Build Steps

The app should build and run on simulators with no changes required. App is only avalible on iOS 15.5.

## Features
- Basic fire and forget stats report for news feed and article pages.
- Typography, as specified in the design.
- Design considerations for smaller and larger screen sizes and iPad.
- Pull to refresh (double tap, hold, pull down on VO).
- Supports dynamic type.
- Supports VoiceOver navigation.

## Technologies

- SwiftUI frontend and entierly swift codebase.
- Async await and URL session for fetching (no combine).
- Snapshot testing library included using Swift Package Manager.
- VIPER architecture:

<img width="750" alt="image" src="https://user-images.githubusercontent.com/17184416/180731552-5661d976-9971-4473-ae15-c3ee9f69deb0.png">

## Workflow

Work was broken down into small, easy to test tickets, with bug tickets used for fixing issues. These a reflected in the commits: [FEATURE/TEST](ticket summary): commit details. e.g. 
```
REFACTOR(bug-accessibility): move nav link for better accessibility
TEST(display-stats-feed): test presenter onAppear func
STAT(display-stats-feed): on appear called in view
```

Strict Test Driven Development has been used (also reflected in the commits with 'TEST' denoating test work).

## Improvements

Codebase is not perfect due to time constraint. Improvements could include giving the app an app icon.

## Assumptions

- Date should be shown as in instructions, sample date being "1 January 1970" -> No minutes and hours.
- Large font is title. This ensures dynamic type while setting a font size (e.g. 45) would not.
