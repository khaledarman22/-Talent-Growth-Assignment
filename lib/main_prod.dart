import 'core/flavor/flavor_config.dart';
import 'run_main.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.prod,
    appName: "Weather App",
    apiBaseUrl: "https://api.openweathermap.org/data/2.5",
  );

  runMainApp();
}
