enum Flavor { dev, prod }

class FlavorConfig {
  final Flavor flavor;
  final String appName;
  final String apiBaseUrl;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavor flavor,
    required String appName,
    required String apiBaseUrl,
  }) {
    _instance ??= FlavorConfig._internal(flavor, appName, apiBaseUrl);
    return _instance!;
  }

  FlavorConfig._internal(this.flavor, this.appName, this.apiBaseUrl);

  static FlavorConfig get instance {
    return _instance!;
  }

  static bool get isProduction => _instance?.flavor == Flavor.prod;
  static bool get isDevelopment => _instance?.flavor == Flavor.dev;
}
