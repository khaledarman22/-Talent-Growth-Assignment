import 'core/flavor/flavor_config.dart';
import 'run_main.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    appName: "Weather Dev",
    apiBaseUrl: "https://api.openweathermap.org/data/2.5",
  );

  runMainApp();
}
