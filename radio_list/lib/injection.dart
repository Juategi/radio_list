import 'package:get_it/get_it.dart';
import 'package:radio_list/application/favorites/favorites_cubit.dart';
import 'package:radio_list/application/radio_audio/radio_audio_cubit.dart';
import 'package:radio_list/application/radio_list/radio_list_cubit.dart';
import 'package:radio_list/application/radio_player/radio_player_cubit.dart';
import 'package:radio_list/infraestructure/radio_browser/core/radio_browser_http_service.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';
import 'package:radio_list/infraestructure/radio_browser/core/shared_preferences_service.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Injection {
  static Future<void> setup() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    RadioBrowserHtttpService httpService = RadioBrowserHtttpService();
    SharedPreferencesService sharedPreferencesService =
        SharedPreferencesService(sharedPreferences);
    RadioRepository radioRepository =
        RadioBrowserRepositoryImpl(httpService, sharedPreferencesService);
    RadioListCubit radioCubit = RadioListCubit(radioRepository);
    RadioPlayerCubit radioPlayerCubit = RadioPlayerCubit();
    RadioAudioCubit radioAudioCubit = RadioAudioCubit();
    FavoritesCubit favoritesCubit = FavoritesCubit(radioRepository);
    GetIt.I.registerSingleton<RadioRepository>(radioRepository);
    GetIt.I.registerSingleton<RadioListCubit>(radioCubit);
    GetIt.I.registerSingleton<RadioPlayerCubit>(radioPlayerCubit);
    GetIt.I.registerSingleton<RadioAudioCubit>(radioAudioCubit);
    GetIt.I.registerSingleton<FavoritesCubit>(favoritesCubit);
  }
}
