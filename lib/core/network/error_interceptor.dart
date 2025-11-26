import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../error/exceptions.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final exception = _handleError(err);

    if (kDebugMode) {
      developer.log(
        '🔥 Handled Error: ${exception.runtimeType}\n'
        'Message: ${_getExceptionMessage(exception)}',
        name: 'ErrorInterceptor',
        error: exception,
        stackTrace: err.stackTrace,
      );
    }

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: exception,
        type: err.type,
        response: err.response,
      ),
    );
  }

  String _getExceptionMessage(Exception exception) {
    if (exception is ServerException) return exception.message;
    if (exception is NetworkException) return exception.message;
    if (exception is CacheException) return exception.message;
    return exception.toString();
  }

  Exception _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkException(
          'Connection timeout. Please check your internet connection.',
        );

      case DioExceptionType.badResponse:
        return _handleStatusCode(
          error.response?.statusCode,
          error.response?.data,
        );

      case DioExceptionType.cancel:
        return const ServerException('Request was cancelled');

      case DioExceptionType.connectionError:
        return const NetworkException(
          'No internet connection. Please check your network.',
        );

      case DioExceptionType.badCertificate:
        return const ServerException('Certificate verification failed');

      case DioExceptionType.unknown:
        if (error.error is Exception) {
          return error.error as Exception;
        }
        return ServerException('Unexpected error occurred: ${error.message}');
    }
  }

  Exception _handleStatusCode(int? statusCode, dynamic responseData) {
    switch (statusCode) {
      case 400:
        return const ServerException('Bad request. Please check your input.');
      case 401:
        return const ServerException(
          'Unauthorized. Please check your API key.',
        );
      case 403:
        return const ServerException('Forbidden. Access denied.');
      case 404:
        return const ServerException(
          'City not found. Please check the city name.',
        );
      case 429:
        return const ServerException(
          'Too many requests. Please try again later.',
        );
      case 500:
      case 502:
      case 503:
        return const ServerException('Server error. Please try again later.');
      default:
        return ServerException(
          'Server error (${statusCode ?? 'Unknown'}): ${_extractErrorMessage(responseData)}',
        );
    }
  }

  String _extractErrorMessage(dynamic data) {
    if (data is Map) {
      return data['message']?.toString() ??
          data['error']?.toString() ??
          'Unknown error';
    }
    return data?.toString() ?? 'Unknown error';
  }
}
