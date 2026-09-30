# AGENTS.md

Flutter web app (package `web`). Only `lib/` is hand-written; `build/`, `android/`, `ios/`, `web/`, `windows/`, `macos/`, `linux/` are excluded from analysis.

## Commands

- Analyze: `flutter analyze`
- Run: `flutter run -d chrome`
- Test: `flutter test`

## Project layout

- `lib/core/` — globals and theme (`app_color.dart`, `variable.dart`, `theme.dart`, `config.dart`)
- `lib/features/<feature>/` — one folder per feature
  - `main.dart` — entry/widget for the feature
  - `column_N.dart`, `panel_*.dart` — smaller widget files

## Widget class structure (the 3 blocks)

Every `State` class is split into three clearly delimited blocks, in this order. Use the exact banner comment format:

```dart
class _MyHomePageState extends State<MyHomePage> {
  // ########## BLOCK: Attributes // ##########
  bool is_mobile = false;
  // ########## END BLOCK: Attributes // ##########

  // ########## BLOCK: Design // ##########
  @override
  Widget build(BuildContext context) {
    // ...
  }
  // ########## END BLOCK: Design // ##########

  // ########## BLOCK: Methods // ##########
  @override
  void initState() {
    super.initState();
  }
  // ########## END BLOCK: Method // ##########
}
```

- **Attributes** — state fields / config.
- **Design** — `build()` and widget tree only.
- **Methods** — helpers, getters, lifecycle overrides.

See `lib/features/layout/main.dart` for the reference example.

## Style conventions

- Use Dart dot shorthands where the type is known: `colorScheme: .fromSeed(...)`, `mainAxisAlignment: .center`, `alignment: .topCenter`.
- End single-line construction sites with a trailing `//` to pin the formatter's line break (e.g. `width: 100, //`).
- Import `dart:` libraries first, then `package:flutter/...`, then project imports.
- Shared state uses the singleton + top-level instance pattern in `lib/core/`:

  ```dart
  class AppColors extends ChangeNotifier {
    static final AppColors instance = AppColors._();
    AppColors._();
    // ...
  }

  AppColors app_color = AppColors.instance;
  ```

  Access these through the top-level instance (`app_color.bg`), not the class name.

- Naming: classes and types `PascalCase`; top-level instances `snake_case` (`app_color`, `variable`); keep generated Flutter boilerplate names (`MyApp`, `MyHomePage`) as-is.
- Do not add explanatory comments beyond the block banners and intentional `//` line-break markers.
