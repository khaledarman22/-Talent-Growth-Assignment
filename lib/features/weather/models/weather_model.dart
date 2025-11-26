import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

WeatherModel weatherModelFromJsonString(String str) =>
    WeatherModel.fromJson(json.decode(str));

String weatherModelToJsonString(WeatherModel data) =>
    json.encode(data.toJson());

@freezed
abstract class WeatherModel with _$WeatherModel {
  const WeatherModel._();

  const factory WeatherModel({
    @JsonKey(name: "name", includeIfNull: false) String? name,
    @JsonKey(name: "main", includeIfNull: false) WeatherModelMain? main,
    @JsonKey(name: "wind", includeIfNull: false) WeatherModelWind? wind,
    @Default([])
    @JsonKey(name: "weather", includeIfNull: false)
    List<WeatherModelWeather> weather,
    @JsonKey(name: "dt", includeIfNull: false) int? dt,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  @override
  String get cityName => name ?? '';
  @override
  double get temperature => main?.temp ?? 0.0;
  @override
  double get feelsLike => main?.feelsLike ?? 0.0;
  @override
  int get humidity => main?.humidity ?? 0;
  @override
  double get windSpeed => wind?.speed ?? 0.0;
  @override
  String get description =>
      weather.isNotEmpty ? weather[0].description ?? '' : '';
  @override
  String get icon => weather.isNotEmpty ? weather[0].icon ?? '' : '';
  @override
  int get timestamp => dt ?? 0;
}

WeatherModelMain weatherModelMainFromJsonString(String str) =>
    WeatherModelMain.fromJson(json.decode(str));

String weatherModelMainToJsonString(WeatherModelMain data) =>
    json.encode(data.toJson());

@freezed
abstract class WeatherModelMain with _$WeatherModelMain {
  const factory WeatherModelMain({
    @JsonKey(name: "temp", includeIfNull: false) double? temp,
    @JsonKey(name: "feels_like", includeIfNull: false) double? feelsLike,
    @JsonKey(name: "humidity", includeIfNull: false) int? humidity,
  }) = _WeatherModelMain;

  factory WeatherModelMain.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelMainFromJson(json);
}

WeatherModelWind weatherModelWindFromJsonString(String str) =>
    WeatherModelWind.fromJson(json.decode(str));

String weatherModelWindToJsonString(WeatherModelWind data) =>
    json.encode(data.toJson());

@freezed
abstract class WeatherModelWind with _$WeatherModelWind {
  const factory WeatherModelWind({
    @JsonKey(name: "speed", includeIfNull: false) double? speed,
  }) = _WeatherModelWind;

  factory WeatherModelWind.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelWindFromJson(json);
}

WeatherModelWeather weatherModelWeatherFromJsonString(String str) =>
    WeatherModelWeather.fromJson(json.decode(str));

String weatherModelWeatherToJsonString(WeatherModelWeather data) =>
    json.encode(data.toJson());

@freezed
abstract class WeatherModelWeather with _$WeatherModelWeather {
  const factory WeatherModelWeather({
    @JsonKey(name: "description", includeIfNull: false) String? description,
    @JsonKey(name: "icon", includeIfNull: false) String? icon,
  }) = _WeatherModelWeather;

  factory WeatherModelWeather.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelWeatherFromJson(json);
}
