import 'package:btk_todo/app.dart';
import 'package:flutter/material.dart';

import '/core/core.dart';

void main() async {
  /// Initialize [Service Locator]
  await configureDependencies();

  runApp(
    const App(),
  );
}
