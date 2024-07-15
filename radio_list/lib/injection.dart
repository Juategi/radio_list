import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio/radio_cubit.dart';
import 'package:radio_list/infraestructure/radio_browser/core/radio_browser_http_service.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_repository_impl.dart';

class Injection {
  static void setup() {
    RadioBrowserHtttpService httpService = RadioBrowserHtttpService();
    RadioRepository radioRepository = RadioBrowserRepositoryImpl(httpService);
    RadioCubit radioCubit = RadioCubit(radioRepository);
    GetIt.I.registerSingleton<RadioRepository>(radioRepository);
    GetIt.I.registerSingleton<RadioCubit>(radioCubit);
  }
}
