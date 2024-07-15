import 'package:flutter_test/flutter_test.dart';
import 'package:radio_list/domain/radio/radio_failure.dart';

void main() {
  test('test the failure', () async {
    const errorMessage = 'error';
    final radioFailure = RadioFailure(Exception(errorMessage).toString());
    expect(radioFailure, isA<RadioFailure>());
    expect(radioFailure.message, 'Exception: $errorMessage');
  });
}
