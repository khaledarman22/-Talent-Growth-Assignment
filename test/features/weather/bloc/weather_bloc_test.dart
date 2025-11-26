import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failures.dart';
import 'package:flutter_assignment/features/weather/bloc/weather/weather_bloc.dart';
import 'package:flutter_assignment/features/weather/models/weather_model.dart';
import 'package:flutter_assignment/features/weather/repositories/weather_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  late WeatherBloc weatherBloc;
  late MockWeatherRepository mockRepository;

  setUp(() {
    mockRepository = MockWeatherRepository();
    weatherBloc = WeatherBloc(mockRepository);
  });

  tearDown(() {
    weatherBloc.close();
  });

  group('WeatherBloc', () {
    const testCityName = 'London';
    const testWeatherModel = WeatherModel(
      name: 'London',
      main: WeatherModelMain(temp: 20.5, feelsLike: 19.0, humidity: 65),
      wind: WeatherModelWind(speed: 5.5),
      weather: [WeatherModelWeather(description: 'Clear sky', icon: '01d')],
      dt: 1234567890,
    );

    test('initial state is WeatherInitial', () {
      expect(weatherBloc.state, WeatherInitial());
    });

    blocTest<WeatherBloc, WeatherState>(
      'emits [WeatherLoading, WeatherLoaded] when GetWeather is added and succeeds',
      build: () {
        when(
          () => mockRepository.getCurrentWeather(testCityName),
        ).thenAnswer((_) async => const Right(testWeatherModel));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const GetWeather(testCityName)),
      expect: () => [WeatherLoading(), const WeatherLoaded(testWeatherModel)],
      verify: (_) {
        verify(() => mockRepository.getCurrentWeather(testCityName)).called(1);
      },
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits [WeatherLoading, WeatherError] when GetWeather is added and fails',
      build: () {
        when(
          () => mockRepository.getCurrentWeather(testCityName),
        ).thenAnswer((_) async => const Left(ServerFailure('Server error')));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const GetWeather(testCityName)),
      expect: () => [WeatherLoading(), const WeatherError('Server error')],
      verify: (_) {
        verify(() => mockRepository.getCurrentWeather(testCityName)).called(1);
      },
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits [WeatherError] when GetWeather is added with empty city name',
      build: () => weatherBloc,
      act: (bloc) => bloc.add(const GetWeather('')),
      expect: () => [const WeatherError('City name cannot be empty')],
    );

    blocTest<WeatherBloc, WeatherState>(
      'emits [WeatherInitial] when ClearWeather is added',
      build: () => weatherBloc,
      act: (bloc) => bloc.add(ClearWeather()),
      expect: () => [WeatherInitial()],
    );
  });
}
