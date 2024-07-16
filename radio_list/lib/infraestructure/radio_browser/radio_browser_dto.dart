import 'package:radio_list/domain/radio/radio_entity.dart';

class RadioBrowserDto {
  final String? changeUuid;
  final String? stationUuid;
  final String? serverUuid;
  final String? name;
  final String? url;
  final String? urlResolved;
  final String? homepage;
  final String? favicon;
  final List<String> tags;
  final String? country;
  final String? countryCode;
  final String? iso31662;
  final String? state;
  final String? language;
  final String? languageCodes;
  final int? votes;
  final DateTime? lastChangeTime;
  final DateTime? lastChangeTimeIso8601;
  final String? codec;
  final int? bitrate;
  final int? hls;
  final int? lastCheckOk;
  final DateTime? lastCheckTime;
  final DateTime? lastCheckTimeIso8601;
  final DateTime? lastCheckOkTime;
  final DateTime? lastCheckOkTimeIso8601;
  final DateTime? lastLocalCheckTime;
  final DateTime? lastLocalCheckTimeIso8601;
  final DateTime? clickTimestamp;
  final DateTime? clickTimestampIso8601;
  final int? clickCount;
  final int? clickTrend;
  final int? sslError;
  final double? geoLat;
  final double? geoLong;
  final bool? hasExtendedInfo;

  RadioBrowserDto({
    this.changeUuid,
    this.stationUuid,
    this.serverUuid,
    this.name,
    this.url,
    this.urlResolved,
    this.homepage,
    this.favicon,
    required this.tags,
    this.country,
    this.countryCode,
    this.iso31662,
    this.state,
    this.language,
    this.languageCodes,
    this.votes,
    this.lastChangeTime,
    this.lastChangeTimeIso8601,
    this.codec,
    this.bitrate,
    this.hls,
    this.lastCheckOk,
    this.lastCheckTime,
    this.lastCheckTimeIso8601,
    this.lastCheckOkTime,
    this.lastCheckOkTimeIso8601,
    this.lastLocalCheckTime,
    this.lastLocalCheckTimeIso8601,
    this.clickTimestamp,
    this.clickTimestampIso8601,
    this.clickCount,
    this.clickTrend,
    this.sslError,
    this.geoLat,
    this.geoLong,
    this.hasExtendedInfo,
  });

  factory RadioBrowserDto.fromJson(Map<String, dynamic> json) {
    return RadioBrowserDto(
      changeUuid: json['changeuuid'],
      stationUuid: json['stationuuid'],
      serverUuid: json['serveruuid'],
      name: json['name'],
      url: json['url'],
      urlResolved: json['url_resolved'],
      homepage: json['homepage'],
      favicon: json['favicon'] == '' ? null : json['favicon'],
      tags: json['tags'].toString().split(','),
      country: json['country'],
      countryCode: json['countrycode'],
      iso31662: json['iso_3166_2'],
      state: json['state'],
      language: json['language'],
      languageCodes: json['languagecodes'],
      votes: json['votes'],
      lastChangeTime: DateTime.tryParse(json['lastchangetime'] ?? ''),
      lastChangeTimeIso8601:
          DateTime.tryParse(json['lastchangetime_iso8601'] ?? ''),
      codec: json['codec'],
      bitrate: json['bitrate'],
      hls: json['hls'],
      lastCheckOk: json['lastcheckok'],
      lastCheckTime: DateTime.tryParse(json['lastchecktime'] ?? ''),
      lastCheckTimeIso8601:
          DateTime.tryParse(json['lastchecktime_iso8601'] ?? ''),
      lastCheckOkTime: DateTime.tryParse(json['lastcheckoktime'] ?? ''),
      lastCheckOkTimeIso8601:
          DateTime.tryParse(json['lastcheckoktime_iso8601'] ?? ''),
      lastLocalCheckTime: DateTime.tryParse(json['lastlocalchecktime'] ?? ''),
      lastLocalCheckTimeIso8601:
          DateTime.tryParse(json['lastlocalchecktime_iso8601'] ?? ''),
      clickTimestamp: DateTime.tryParse(json['clicktimestamp'] ?? ''),
      clickTimestampIso8601:
          DateTime.tryParse(json['clicktimestamp_iso8601'] ?? ''),
      clickCount: json['clickcount'],
      clickTrend: json['clicktrend'],
      sslError: json['ssl_error'],
      geoLat: json['geo_lat'],
      geoLong: json['geo_long'],
      hasExtendedInfo: json['has_extended_info'],
    );
  }

  RadioEntity toDomain() {
    return RadioEntity(
      id: stationUuid,
      name: name ?? '',
      urlResolved: urlResolved ?? '',
      homepage: homepage,
      favicon: favicon ?? '',
      tags: tags,
    );
  }
}
