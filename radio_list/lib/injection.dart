import 'package:get_it/get_it.dart';
import 'package:radio_list/infraestructure/radio_browser/core/radio_browser_http_service.dart';
import 'package:radio_list/domain/radio/radio_repository.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_repository_impl.dart';

class Injection {
  static void setup() {
    RadioBrowserHtttpService httpService = RadioBrowserHtttpService();
    GetIt.I.registerSingleton<RadioRepository>(
        RadioBrowserRepositoryImpl(httpService));
  }
}
