// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  @JsonKey(name: "name", includeIfNull: false)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "main", includeIfNull: false)
  WeatherModelMain? get main => throw _privateConstructorUsedError;
  @JsonKey(name: "wind", includeIfNull: false)
  WeatherModelWind? get wind => throw _privateConstructorUsedError;
  @JsonKey(name: "weather", includeIfNull: false)
  List<WeatherModelWeather> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: "dt", includeIfNull: false)
  int? get dt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name", includeIfNull: false) String? name,
      @JsonKey(name: "main", includeIfNull: false) WeatherModelMain? main,
      @JsonKey(name: "wind", includeIfNull: false) WeatherModelWind? wind,
      @JsonKey(name: "weather", includeIfNull: false)
      List<WeatherModelWeather> weather,
      @JsonKey(name: "dt", includeIfNull: false) int? dt});

  $WeatherModelMainCopyWith<$Res>? get main;
  $WeatherModelWindCopyWith<$Res>? get wind;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? main = freezed,
    Object? wind = freezed,
    Object? weather = null,
    Object? dt = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherModelMain?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WeatherModelWind?,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModelWeather>,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelMainCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $WeatherModelMainCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelWindCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WeatherModelWindCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name", includeIfNull: false) String? name,
      @JsonKey(name: "main", includeIfNull: false) WeatherModelMain? main,
      @JsonKey(name: "wind", includeIfNull: false) WeatherModelWind? wind,
      @JsonKey(name: "weather", includeIfNull: false)
      List<WeatherModelWeather> weather,
      @JsonKey(name: "dt", includeIfNull: false) int? dt});

  @override
  $WeatherModelMainCopyWith<$Res>? get main;
  @override
  $WeatherModelWindCopyWith<$Res>? get wind;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? main = freezed,
    Object? wind = freezed,
    Object? weather = null,
    Object? dt = freezed,
  }) {
    return _then(_$WeatherModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherModelMain?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WeatherModelWind?,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModelWeather>,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl extends _WeatherModel {
  const _$WeatherModelImpl(
      {@JsonKey(name: "name", includeIfNull: false) this.name,
      @JsonKey(name: "main", includeIfNull: false) this.main,
      @JsonKey(name: "wind", includeIfNull: false) this.wind,
      @JsonKey(name: "weather", includeIfNull: false)
      final List<WeatherModelWeather> weather = const [],
      @JsonKey(name: "dt", includeIfNull: false) this.dt})
      : _weather = weather,
        super._();

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  @JsonKey(name: "name", includeIfNull: false)
  final String? name;
  @override
  @JsonKey(name: "main", includeIfNull: false)
  final WeatherModelMain? main;
  @override
  @JsonKey(name: "wind", includeIfNull: false)
  final WeatherModelWind? wind;
  final List<WeatherModelWeather> _weather;
  @override
  @JsonKey(name: "weather", includeIfNull: false)
  List<WeatherModelWeather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: "dt", includeIfNull: false)
  final int? dt;

  @override
  String toString() {
    return 'WeatherModel(name: $name, main: $main, wind: $wind, weather: $weather, dt: $dt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, main, wind,
      const DeepCollectionEquality().hash(_weather), dt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel extends WeatherModel {
  const factory _WeatherModel(
      {@JsonKey(name: "name", includeIfNull: false) final String? name,
      @JsonKey(name: "main", includeIfNull: false) final WeatherModelMain? main,
      @JsonKey(name: "wind", includeIfNull: false) final WeatherModelWind? wind,
      @JsonKey(name: "weather", includeIfNull: false)
      final List<WeatherModelWeather> weather,
      @JsonKey(name: "dt", includeIfNull: false)
      final int? dt}) = _$WeatherModelImpl;
  const _WeatherModel._() : super._();

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  @JsonKey(name: "name", includeIfNull: false)
  String? get name;
  @override
  @JsonKey(name: "main", includeIfNull: false)
  WeatherModelMain? get main;
  @override
  @JsonKey(name: "wind", includeIfNull: false)
  WeatherModelWind? get wind;
  @override
  @JsonKey(name: "weather", includeIfNull: false)
  List<WeatherModelWeather> get weather;
  @override
  @JsonKey(name: "dt", includeIfNull: false)
  int? get dt;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherModelMain _$WeatherModelMainFromJson(Map<String, dynamic> json) {
  return _WeatherModelMain.fromJson(json);
}

/// @nodoc
mixin _$WeatherModelMain {
  @JsonKey(name: "temp", includeIfNull: false)
  double? get temp => throw _privateConstructorUsedError;
  @JsonKey(name: "feels_like", includeIfNull: false)
  double? get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: "humidity", includeIfNull: false)
  int? get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelMainCopyWith<WeatherModelMain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelMainCopyWith<$Res> {
  factory $WeatherModelMainCopyWith(
          WeatherModelMain value, $Res Function(WeatherModelMain) then) =
      _$WeatherModelMainCopyWithImpl<$Res, WeatherModelMain>;
  @useResult
  $Res call(
      {@JsonKey(name: "temp", includeIfNull: false) double? temp,
      @JsonKey(name: "feels_like", includeIfNull: false) double? feelsLike,
      @JsonKey(name: "humidity", includeIfNull: false) int? humidity});
}

/// @nodoc
class _$WeatherModelMainCopyWithImpl<$Res, $Val extends WeatherModelMain>
    implements $WeatherModelMainCopyWith<$Res> {
  _$WeatherModelMainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherModelMainImplCopyWith<$Res>
    implements $WeatherModelMainCopyWith<$Res> {
  factory _$$WeatherModelMainImplCopyWith(_$WeatherModelMainImpl value,
          $Res Function(_$WeatherModelMainImpl) then) =
      __$$WeatherModelMainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "temp", includeIfNull: false) double? temp,
      @JsonKey(name: "feels_like", includeIfNull: false) double? feelsLike,
      @JsonKey(name: "humidity", includeIfNull: false) int? humidity});
}

/// @nodoc
class __$$WeatherModelMainImplCopyWithImpl<$Res>
    extends _$WeatherModelMainCopyWithImpl<$Res, _$WeatherModelMainImpl>
    implements _$$WeatherModelMainImplCopyWith<$Res> {
  __$$WeatherModelMainImplCopyWithImpl(_$WeatherModelMainImpl _value,
      $Res Function(_$WeatherModelMainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$WeatherModelMainImpl(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelMainImpl implements _WeatherModelMain {
  const _$WeatherModelMainImpl(
      {@JsonKey(name: "temp", includeIfNull: false) this.temp,
      @JsonKey(name: "feels_like", includeIfNull: false) this.feelsLike,
      @JsonKey(name: "humidity", includeIfNull: false) this.humidity});

  factory _$WeatherModelMainImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelMainImplFromJson(json);

  @override
  @JsonKey(name: "temp", includeIfNull: false)
  final double? temp;
  @override
  @JsonKey(name: "feels_like", includeIfNull: false)
  final double? feelsLike;
  @override
  @JsonKey(name: "humidity", includeIfNull: false)
  final int? humidity;

  @override
  String toString() {
    return 'WeatherModelMain(temp: $temp, feelsLike: $feelsLike, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelMainImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelMainImplCopyWith<_$WeatherModelMainImpl> get copyWith =>
      __$$WeatherModelMainImplCopyWithImpl<_$WeatherModelMainImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelMainImplToJson(
      this,
    );
  }
}

abstract class _WeatherModelMain implements WeatherModelMain {
  const factory _WeatherModelMain(
      {@JsonKey(name: "temp", includeIfNull: false) final double? temp,
      @JsonKey(name: "feels_like", includeIfNull: false)
      final double? feelsLike,
      @JsonKey(name: "humidity", includeIfNull: false)
      final int? humidity}) = _$WeatherModelMainImpl;

  factory _WeatherModelMain.fromJson(Map<String, dynamic> json) =
      _$WeatherModelMainImpl.fromJson;

  @override
  @JsonKey(name: "temp", includeIfNull: false)
  double? get temp;
  @override
  @JsonKey(name: "feels_like", includeIfNull: false)
  double? get feelsLike;
  @override
  @JsonKey(name: "humidity", includeIfNull: false)
  int? get humidity;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelMainImplCopyWith<_$WeatherModelMainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherModelWind _$WeatherModelWindFromJson(Map<String, dynamic> json) {
  return _WeatherModelWind.fromJson(json);
}

/// @nodoc
mixin _$WeatherModelWind {
  @JsonKey(name: "speed", includeIfNull: false)
  double? get speed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelWindCopyWith<WeatherModelWind> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelWindCopyWith<$Res> {
  factory $WeatherModelWindCopyWith(
          WeatherModelWind value, $Res Function(WeatherModelWind) then) =
      _$WeatherModelWindCopyWithImpl<$Res, WeatherModelWind>;
  @useResult
  $Res call({@JsonKey(name: "speed", includeIfNull: false) double? speed});
}

/// @nodoc
class _$WeatherModelWindCopyWithImpl<$Res, $Val extends WeatherModelWind>
    implements $WeatherModelWindCopyWith<$Res> {
  _$WeatherModelWindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
  }) {
    return _then(_value.copyWith(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherModelWindImplCopyWith<$Res>
    implements $WeatherModelWindCopyWith<$Res> {
  factory _$$WeatherModelWindImplCopyWith(_$WeatherModelWindImpl value,
          $Res Function(_$WeatherModelWindImpl) then) =
      __$$WeatherModelWindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "speed", includeIfNull: false) double? speed});
}

/// @nodoc
class __$$WeatherModelWindImplCopyWithImpl<$Res>
    extends _$WeatherModelWindCopyWithImpl<$Res, _$WeatherModelWindImpl>
    implements _$$WeatherModelWindImplCopyWith<$Res> {
  __$$WeatherModelWindImplCopyWithImpl(_$WeatherModelWindImpl _value,
      $Res Function(_$WeatherModelWindImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
  }) {
    return _then(_$WeatherModelWindImpl(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelWindImpl implements _WeatherModelWind {
  const _$WeatherModelWindImpl(
      {@JsonKey(name: "speed", includeIfNull: false) this.speed});

  factory _$WeatherModelWindImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelWindImplFromJson(json);

  @override
  @JsonKey(name: "speed", includeIfNull: false)
  final double? speed;

  @override
  String toString() {
    return 'WeatherModelWind(speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelWindImpl &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelWindImplCopyWith<_$WeatherModelWindImpl> get copyWith =>
      __$$WeatherModelWindImplCopyWithImpl<_$WeatherModelWindImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelWindImplToJson(
      this,
    );
  }
}

abstract class _WeatherModelWind implements WeatherModelWind {
  const factory _WeatherModelWind(
          {@JsonKey(name: "speed", includeIfNull: false) final double? speed}) =
      _$WeatherModelWindImpl;

  factory _WeatherModelWind.fromJson(Map<String, dynamic> json) =
      _$WeatherModelWindImpl.fromJson;

  @override
  @JsonKey(name: "speed", includeIfNull: false)
  double? get speed;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelWindImplCopyWith<_$WeatherModelWindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherModelWeather _$WeatherModelWeatherFromJson(Map<String, dynamic> json) {
  return _WeatherModelWeather.fromJson(json);
}

/// @nodoc
mixin _$WeatherModelWeather {
  @JsonKey(name: "description", includeIfNull: false)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "icon", includeIfNull: false)
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelWeatherCopyWith<WeatherModelWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelWeatherCopyWith<$Res> {
  factory $WeatherModelWeatherCopyWith(
          WeatherModelWeather value, $Res Function(WeatherModelWeather) then) =
      _$WeatherModelWeatherCopyWithImpl<$Res, WeatherModelWeather>;
  @useResult
  $Res call(
      {@JsonKey(name: "description", includeIfNull: false) String? description,
      @JsonKey(name: "icon", includeIfNull: false) String? icon});
}

/// @nodoc
class _$WeatherModelWeatherCopyWithImpl<$Res, $Val extends WeatherModelWeather>
    implements $WeatherModelWeatherCopyWith<$Res> {
  _$WeatherModelWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherModelWeatherImplCopyWith<$Res>
    implements $WeatherModelWeatherCopyWith<$Res> {
  factory _$$WeatherModelWeatherImplCopyWith(_$WeatherModelWeatherImpl value,
          $Res Function(_$WeatherModelWeatherImpl) then) =
      __$$WeatherModelWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "description", includeIfNull: false) String? description,
      @JsonKey(name: "icon", includeIfNull: false) String? icon});
}

/// @nodoc
class __$$WeatherModelWeatherImplCopyWithImpl<$Res>
    extends _$WeatherModelWeatherCopyWithImpl<$Res, _$WeatherModelWeatherImpl>
    implements _$$WeatherModelWeatherImplCopyWith<$Res> {
  __$$WeatherModelWeatherImplCopyWithImpl(_$WeatherModelWeatherImpl _value,
      $Res Function(_$WeatherModelWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$WeatherModelWeatherImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelWeatherImpl implements _WeatherModelWeather {
  const _$WeatherModelWeatherImpl(
      {@JsonKey(name: "description", includeIfNull: false) this.description,
      @JsonKey(name: "icon", includeIfNull: false) this.icon});

  factory _$WeatherModelWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelWeatherImplFromJson(json);

  @override
  @JsonKey(name: "description", includeIfNull: false)
  final String? description;
  @override
  @JsonKey(name: "icon", includeIfNull: false)
  final String? icon;

  @override
  String toString() {
    return 'WeatherModelWeather(description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelWeatherImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelWeatherImplCopyWith<_$WeatherModelWeatherImpl> get copyWith =>
      __$$WeatherModelWeatherImplCopyWithImpl<_$WeatherModelWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelWeatherImplToJson(
      this,
    );
  }
}

abstract class _WeatherModelWeather implements WeatherModelWeather {
  const factory _WeatherModelWeather(
          {@JsonKey(name: "description", includeIfNull: false)
          final String? description,
          @JsonKey(name: "icon", includeIfNull: false) final String? icon}) =
      _$WeatherModelWeatherImpl;

  factory _WeatherModelWeather.fromJson(Map<String, dynamic> json) =
      _$WeatherModelWeatherImpl.fromJson;

  @override
  @JsonKey(name: "description", includeIfNull: false)
  String? get description;
  @override
  @JsonKey(name: "icon", includeIfNull: false)
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelWeatherImplCopyWith<_$WeatherModelWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
