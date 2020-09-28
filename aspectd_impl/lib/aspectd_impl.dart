library aspectd_impl;

import 'package:flutter_steps/main.dart' as app;

// ignore: unused_import
import 'aop_impl.dart';

void main() => app.main();

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
