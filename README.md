# Flutter boiler-plate code

![](https://raw.githubusercontent.com/ashishrawat2911/flutter_boiler_plate/master/screenshots/architect.jpg)


# Folder Structure

```
flutter_boiler_plate/
|- android
|- build
|- ios
|- lib
|- test
```

### Lib Folder Structure
```
lib/
|- src/bloc
    |- base_cubit
    |- bloc_obeserver
    |- bloc.dart
|- src/core
    |- enums
    |- flavor
    |- force_update
    |- localization
    |- mixins
    |- preferences
    |- services
    |- utils
|- src/di
    |- app_injector.dart
|- src/model
|- src/network
    |- api_client
    |- network_state
        |- error
        |- result
        |- result_state
        |- network_state.dart
|- src/repository
|- src/res
|- src/routes
|- src/ui
    |- clippers_and_painters
    |- common
    |- screens
    |- widgets
|- src/app.dart
|- main.dart

```


# State Management 
This project uses [flutter_bloc](https://pub.dev/packages/flutter_bloc) for state management and Api calling.

![](https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/cubit_architecture_full.png)

### Why bloc
Bloc makes it easy to separate presentation from business logic, making your code fast, easy to test, and reusable.

When building production quality applications, managing state becomes critical.

- know what state our application is in at any point in time.
- easily test every case to make sure our app is responding appropriately.
- record every single user interaction in our application so that we can make data-driven decisions.
- work as efficiently as possible and reuse components both within our application and across other applications.
- have many developers seamlessly working within a single code base following the same patterns and conventions.
- develop fast and reactive apps.

Bloc attempts to make state changes predictable by regulating when a state change can occur and enforcing a single way to change state throughout an entire application.

![](https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/cubit_flow.png)

### Learn to call api and manage the network state using [flutter_bloc](https://pub.dev/packages/flutter_bloc)
[Network Handling using Cubit](https://github.com/ashishrawat2911/network_handling)

