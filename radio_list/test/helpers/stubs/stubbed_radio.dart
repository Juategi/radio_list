import 'package:radio_list/domain/radio/radio_entity.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_dto.dart';

DateTime dateRandom = DateTime(2022, 10, 15, 12, 30, 45);
RadioBrowserDto stubbedRadioDto = RadioBrowserDto(
  changeUuid: 'random_change_uuid',
  stationUuid: 'random_station_uuid',
  serverUuid: 'random_server_uuid',
  name: 'random_name',
  url: 'random_url',
  urlResolved: 'random_url_resolved',
  homepage: 'random_homepage',
  favicon: 'random_favicon',
  tags: ['random_tag1', 'random_tag2'],
  country: 'random_country',
  countryCode: 'random_country_code',
  iso31662: 'random_iso31662',
  state: 'random_state',
  language: 'random_language',
  languageCodes: 'random_language_codes',
  votes: 0,
  lastChangeTime: dateRandom,
  lastChangeTimeIso8601: dateRandom,
  codec: 'random_codec',
  bitrate: 128,
  hls: 1,
  lastCheckOk: 1,
  lastCheckTime: dateRandom,
  lastCheckTimeIso8601: dateRandom,
  lastCheckOkTime: dateRandom,
  lastCheckOkTimeIso8601: dateRandom,
  lastLocalCheckTime: dateRandom,
  lastLocalCheckTimeIso8601: dateRandom,
  clickTimestamp: dateRandom,
  clickTimestampIso8601: dateRandom,
  clickCount: 0,
  clickTrend: 0,
  sslError: 0,
  geoLat: 0.0,
  geoLong: 0.0,
  hasExtendedInfo: false,
);

Map<String, dynamic> stubbedRadioJson = {
  'changeuuid': 'random_change_uuid',
  'stationuuid': 'random_station_uuid',
  'serveruuid': 'random_server_uuid',
  'name': 'random_name',
  'url': 'random_url',
  'url_resolved': 'random_url_resolved',
  'homepage': 'random_homepage',
  'favicon': 'random_favicon',
  'tags': 'random_tag1,random_tag2',
  'country': 'random_country',
  'countrycode': 'random_country_code',
  'iso_3166_2': 'random_iso31662',
  'state': 'random_state',
  'language': 'random_language',
  'languagecodes': 'random_language_codes',
  'votes': 0,
  'lastchangetime': dateRandom.toIso8601String(),
  'lastchangetime_iso8601': dateRandom.toIso8601String(),
  'codec': 'random_codec',
  'bitrate': 128,
  'hls': 1,
  'lastcheckok': 1,
  'lastchecktime': dateRandom.toIso8601String(),
  'lastchecktime_iso8601': dateRandom.toIso8601String(),
  'lastcheckoktime': dateRandom.toIso8601String(),
  'lastcheckoktime_iso8601': dateRandom.toIso8601String(),
  'lastlocalchecktime': dateRandom.toIso8601String(),
  'lastlocalchecktime_iso8601': dateRandom.toIso8601String(),
  'clicktimestamp': dateRandom.toIso8601String(),
  'clicktimestamp_iso8601': dateRandom.toIso8601String(),
  'clickcount': 0,
  'clicktrend': 0,
  'ssl_error': 0,
  'geo_lat': 0.0,
  'geo_long': 0.0,
  'has_extended_info': false,
};

RadioEntity stubbedRadioEntity = RadioEntity(
  id: 'random_station_uuid',
  name: 'random_name',
  urlResolved: 'random_url_resolved',
  homepage: 'random_homepage',
  favicon: 'random_favicon',
  tags: ['random_tag1', 'random_tag2'],
);
