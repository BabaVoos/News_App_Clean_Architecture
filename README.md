# News App Clean Architecture 

The News App is a Flutter application designed to provide users with up-to-date news articles. It follows a clean architecture pattern to ensure maintainability, scalability, and testability. This project demonstrates best practices in Flutter development, including the use of Bloc for state management, Dio for networking, and Floor for local storage.

# Features
- Fetch news articles from a remote API.
- Save articles locally for offline access.
- Display a list of saved articles.
- Remove saved articles from local storage.
- Modern, user-friendly UI built with Flutter

# Architecture
This project follows the Clean Architecture principles, which separate concerns into different layers:

- Presentation: Contains the UI components and business logic using the Bloc pattern.
- Domain: Defines the core business logic and entities. Includes use cases and repositories.
- Data: Handles data sources, including remote API and local database interactions. Uses Dio for network requests and Floor for local storage.

![diagram-export-8-20-2024-1_14_17-AM](https://github.com/user-attachments/assets/cd3ed5ce-8ec2-4def-81b6-fbb3bc804650)

- lib

      - config
            - routes
            - theme
      - core
            - constants
            - resources
            - usecases
      - features
            - feature
                - data
                      - data_sources
                      - models
                      - repos
                - domain
                      - entities
                      - repo
                      - usecases
                - presentation
                      - bloc
                      - pages
                      - widgets
      - injection_container
      - main.dart

## Installation
These are the steps to run this project locally

### Clone This Repository
```
git clone https://github.com/BabaVoos/News_App_Clean_Architecture.git
```

### Install dependencies
```
flutter pub get
```

### Run the app 
```
flutter run
```
