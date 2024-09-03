# SIMBIOTIK Dashboard

### Run Project
- Clone project 
```
git clone https://github.com/SIMBIOTIK-project/SIMBIOTIK-web.git
```

Note: You can use [Project IDX](https://idx.dev) to clone this project.

- Create the ```.env``` and ```.env_dev``` in the root project with value
```
URL = "https://'name-site-API'"
``` 

Note: For API URL you can contact Developer/Owner this project

- Run pub get in Terminal
```
flutter pub get
```

- Run Project
For Development
```
flutter run --flavor dev --target lib/main_dev.dart
```

For Production
```
flutter run --flavor prod --target lib/main_prod.dart
```