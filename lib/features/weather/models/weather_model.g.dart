// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      name: json['name'] as String?,
      main: json['main'] == null
          ? null
          : WeatherModelMain.fromJson(json['main'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : WeatherModelWind.fromJson(json['wind'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) =>
                  WeatherModelWeather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dt: (json['dt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('main', instance.main);
  writeNotNull('wind', instance.wind);
  val['weather'] = instance.weather;
  writeNotNull('dt', instance.dt);
  return val;
}

_$WeatherModelMainImpl _$$WeatherModelMainImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherModelMainImpl(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WeatherModelMainImplToJson(
    _$WeatherModelMainImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('temp', instance.temp);
  writeNotNull('feels_like', instance.feelsLike);
  writeNotNull('humidity', instance.humidity);
  return val;
}

_$WeatherModelWindImpl _$$WeatherModelWindImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherModelWindImpl(
      speed: (json['speed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeatherModelWindImplToJson(
    _$WeatherModelWindImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('speed', instance.speed);
  return val;
}

_$WeatherModelWeatherImpl _$$WeatherModelWeatherImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherModelWeatherImpl(
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$WeatherModelWeatherImplToJson(
    _$WeatherModelWeatherImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('icon', instance.icon);
  return val;
}
