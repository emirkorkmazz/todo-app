import 'package:btk_todo/app.dart';
import 'package:flutter/material.dart';

import '/core/core.dart';

void main() {
  /// Initialize [Service Locator]
  configureDependencies();

  runApp(
    const App(),
  );
}
