import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:radio_list/application/radio/radio_cubit.dart';
import 'package:radio_list/domain/radio/radio_failure.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';

import '../../helpers/stubs/stubbed_radio.dart';
import 'radio_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<RadioRepository>(),
])
void main() {
  final MockRadioRepository mockRadioRepository = MockRadioRepository();
  late RadioCubit radioCubit;

  setUp(() {
    radioCubit = RadioCubit(mockRadioRepository);
  });

  group('getRadios', () {
    test('should emit a RadioLoaded state when succesful', () async {
      when(mockRadioRepository.getRadios())
          .thenAnswer((_) => Future.value(Right([stubbedRadioEntity])));
      await radioCubit.getRadios();
      expect(
        radioCubit.state,
        RadioState.loaded([stubbedRadioEntity]),
      );
    });

    test('should emit a RadioError state when unsuccesful', () async {
      when(mockRadioRepository.getRadios())
          .thenAnswer((_) => Future.value(Left(RadioFailure('error'))));
      await radioCubit.getRadios();
      expect(
        radioCubit.state,
        const RadioState.error('error'),
      );
    });
  });
}
