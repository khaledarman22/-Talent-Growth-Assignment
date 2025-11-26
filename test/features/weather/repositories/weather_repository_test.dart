import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/core/error/failures.dart';
import 'package:flutter_assignment/features/weather/models/weather_model.dart';
import 'package:flutter_assignment/features/weather/repositories/weather_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late WeatherRepository repository;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    repository = WeatherRepository(mockDio);
  });

  group('WeatherRepository', () {
    const testCityName = 'Paris';
    const testWeatherModel = WeatherModel(
      name: 'Paris',
      main: WeatherModelMain(temp: 18.5, feelsLike: 17.0, humidity: 70),
      wind: WeatherModelWind(speed: 4.2),
      weather: [WeatherModelWeather(description: 'Cloudy', icon: '03d')],
      dt: 1234567890,
    );

    final testResponse = Response(
      data: {
        'name': 'Paris',
        'main': {'temp': 18.5, 'feels_like': 17.0, 'humidity': 70},
        'wind': {'speed': 4.2},
        'weather': [
          {'description': 'Cloudy', 'icon': '03d'},
        ],
        'dt': 1234567890,
      },
      statusCode: 200,
      requestOptions: RequestOptions(path: '/weather'),
    );

    test('should return weather data when API call succeeds', () async {
      // Arrange
      when(
        () => mockDio.get('/weather', queryParameters: {'q': testCityName}),
      ).thenAnswer((_) async => testResponse);

      // Act
      final result = await repository.getCurrentWeather(testCityName);

      // Assert
      expect(result, const Right(testWeatherModel));
      verify(
        () => mockDio.get('/weather', queryParameters: {'q': testCityName}),
      ).called(1);
    });

    test(
      'should return ServerFailure when DioException with ServerException occurs',
      () async {
        // Arrange
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/weather'),
          error: const ServerException('City not found'),
        );

        when(
          () => mockDio.get('/weather', queryParameters: {'q': testCityName}),
        ).thenThrow(dioException);

        // Act
        final result = await repository.getCurrentWeather(testCityName);

        // Assert
        expect(result, const Left(ServerFailure('City not found')));
      },
    );

    test(
      'should return NetworkFailure when DioException with NetworkException occurs',
      () async {
        // Arrange
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/weather'),
          error: const NetworkException('No internet'),
        );

        when(
          () => mockDio.get('/weather', queryParameters: {'q': testCityName}),
        ).thenThrow(dioException);

        // Act
        final result = await repository.getCurrentWeather(testCityName);

        // Assert
        expect(result, const Left(NetworkFailure('No internet')));
      },
    );

    test(
      'should return ServerFailure when generic DioException occurs',
      () async {
        // Arrange
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/weather'),
          type: DioExceptionType.unknown,
        );

        when(
          () => mockDio.get('/weather', queryParameters: {'q': testCityName}),
        ).thenThrow(dioException);

        // Act
        final result = await repository.getCurrentWeather(testCityName);

        // Assert
        expect(result, const Left(ServerFailure('Unknown error')));
      },
    );
  });
}
