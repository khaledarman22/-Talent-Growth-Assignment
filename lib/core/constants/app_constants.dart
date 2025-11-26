import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  static String get apiKey => dotenv.env['API_KEY'] ?? '';
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';

  static const String weatherBoxName = 'weather_box';
  static const String forecastBoxName = 'forecast_box';
  static const String cacheBoxName = 'dio_cache_box';

  static const Duration cacheDuration = Duration(minutes: 30);
  static const Duration dioCacheDuration = Duration(hours: 1);
}
