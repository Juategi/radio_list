import 'package:flutter_test/flutter_test.dart';
import 'package:radio_list/infraestructure/radio_browser/radio_browser_dto.dart';

import '../../helpers/stubs/stubbed_radio.dart';

void main() {
  test('toDomain', () {
    final radioEntity = stubbedRadioDto.toDomain();
    expect(radioEntity.id, stubbedRadioEntity.id);
    expect(radioEntity.name, stubbedRadioEntity.name);
    expect(radioEntity.urlResolved, stubbedRadioEntity.urlResolved);
    expect(radioEntity.homepage, stubbedRadioEntity.homepage);
    expect(radioEntity.favicon, stubbedRadioEntity.favicon);
    expect(radioEntity.tags, stubbedRadioEntity.tags);
  });

  test('fromJson', () {
    final radioDto = RadioBrowserDto.fromJson(stubbedRadioJson);
    expect(radioDto.changeUuid, stubbedRadioDto.changeUuid);
    expect(radioDto.stationUuid, stubbedRadioDto.stationUuid);
    expect(radioDto.serverUuid, stubbedRadioDto.serverUuid);
    expect(radioDto.name, stubbedRadioDto.name);
    expect(radioDto.url, stubbedRadioDto.url);
    expect(radioDto.urlResolved, stubbedRadioDto.urlResolved);
    expect(radioDto.homepage, stubbedRadioDto.homepage);
    expect(radioDto.favicon, stubbedRadioDto.favicon);
    expect(radioDto.tags, stubbedRadioDto.tags);
    expect(radioDto.country, stubbedRadioDto.country);
    expect(radioDto.countryCode, stubbedRadioDto.countryCode);
    expect(radioDto.iso31662, stubbedRadioDto.iso31662);
    expect(radioDto.state, stubbedRadioDto.state);
    expect(radioDto.language, stubbedRadioDto.language);
    expect(radioDto.languageCodes, stubbedRadioDto.languageCodes);
    expect(radioDto.votes, stubbedRadioDto.votes);
    expect(radioDto.lastChangeTime, stubbedRadioDto.lastChangeTime);
    expect(
        radioDto.lastChangeTimeIso8601, stubbedRadioDto.lastChangeTimeIso8601);
    expect(radioDto.codec, stubbedRadioDto.codec);
    expect(radioDto.bitrate, stubbedRadioDto.bitrate);
    expect(radioDto.hls, stubbedRadioDto.hls);
    expect(radioDto.lastCheckOk, stubbedRadioDto.lastCheckOk);
    expect(radioDto.lastCheckTime, stubbedRadioDto.lastCheckTime);
    expect(radioDto.lastCheckTimeIso8601, stubbedRadioDto.lastCheckTimeIso8601);
    expect(radioDto.lastCheckOkTime, stubbedRadioDto.lastCheckOkTime);
    expect(radioDto.lastCheckOkTimeIso8601,
        stubbedRadioDto.lastCheckOkTimeIso8601);
    expect(radioDto.lastLocalCheckTime, stubbedRadioDto.lastLocalCheckTime);
    expect(radioDto.lastLocalCheckTimeIso8601,
        stubbedRadioDto.lastLocalCheckTimeIso8601);
    expect(radioDto.clickTimestamp, stubbedRadioDto.clickTimestamp);
    expect(
        radioDto.clickTimestampIso8601, stubbedRadioDto.clickTimestampIso8601);
    expect(radioDto.clickCount, stubbedRadioDto.clickCount);
    expect(radioDto.clickTrend, stubbedRadioDto.clickTrend);
    expect(radioDto.sslError, stubbedRadioDto.sslError);
    expect(radioDto.geoLat, stubbedRadioDto.geoLat);
    expect(radioDto.geoLong, stubbedRadioDto.geoLong);
    expect(radioDto.hasExtendedInfo, stubbedRadioDto.hasExtendedInfo);
  });
}
