import 'package:btk_todo/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /// Initialize [Service Locator]
  await configureDependencies();

  runApp(
    const App(),
  );
}
