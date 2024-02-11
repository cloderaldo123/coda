import 'package:flutter_test/flutter_test.dart';
import 'package:coda/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ScrollrouteServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
