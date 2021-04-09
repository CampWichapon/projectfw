// @dart=2.10

import 'dart:ui' as ui;

import 'package:projectfw/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
