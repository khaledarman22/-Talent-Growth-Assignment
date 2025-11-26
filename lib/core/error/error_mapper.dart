import 'package:dio/dio.dart';

import 'exceptions.dart';
import 'failures.dart';

class ErrorMapper {
  static Failure mapDioException(DioException e) {
    if (e.error is ServerException) {
      return ServerFailure((e.error as ServerException).message);
    }

    if (e.error is NetworkException) {
      return NetworkFailure((e.error as NetworkException).message);
    }

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure('Connection timeout');

      case DioExceptionType.connectionError:
        return const NetworkFailure('No internet connection');

      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 404) {
          return const ServerFailure('City not found');
        } else if (statusCode == 401) {
          return const ServerFailure('Invalid API key');
        } else {
          return const ServerFailure('Server error');
        }

      case DioExceptionType.cancel:
        return const NetworkFailure('Request cancelled');

      default:
        return const ServerFailure('Unknown error');
    }
  }

  static Failure mapException(Object e) {
    if (e is DioException) {
      return mapDioException(e);
    }

    if (e is ServerException) {
      return ServerFailure(e.message);
    }

    if (e is NetworkException) {
      return NetworkFailure(e.message);
    }

    if (e is CacheException) {
      return CacheFailure(e.message);
    }

    return ServerFailure(e.toString());
  }
}
