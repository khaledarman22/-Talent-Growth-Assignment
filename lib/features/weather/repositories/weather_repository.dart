import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/error_mapper.dart';
import '../../../../core/error/failures.dart';
import '../models/weather_model.dart';

@lazySingleton
class WeatherRepository {
  final Dio dio;

  WeatherRepository(this.dio);

  Future<Either<Failure, WeatherModel>> getCurrentWeather(
    String cityName,
  ) async {
    try {
      final response = await dio.get(
        '/weather',
        queryParameters: {'q': cityName},
      );

      final weather = WeatherModel.fromJson(response.data);
      return Right(weather);
    } catch (e) {
      return Left(ErrorMapper.mapException(e));
    }
  }
}
