import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_list/radio_list_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/infraestructure/radio_browser/core/radio_browser_http_service.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_repository_impl.dart';

class Injection {
  static void setup() {
    RadioBrowserHtttpService httpService = RadioBrowserHtttpService();
    RadioRepository radioRepository = RadioBrowserRepositoryImpl(httpService);
    RadioListCubit radioCubit = RadioListCubit(radioRepository);
    RadioPlayerCubit radioPlayerCubit = RadioPlayerCubit();
    RadioAudioCubit radioAudioCubit = RadioAudioCubit();
    GetIt.I.registerSingleton<RadioRepository>(radioRepository);
    GetIt.I.registerSingleton<RadioListCubit>(radioCubit);
    GetIt.I.registerSingleton<RadioPlayerCubit>(radioPlayerCubit);
    GetIt.I.registerSingleton<RadioAudioCubit>(radioAudioCubit);
  }
}
