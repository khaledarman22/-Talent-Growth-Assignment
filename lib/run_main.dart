import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/di/injection.dart';
import 'core/flavor/flavor_config.dart';
import 'core/theme/app_theme.dart';
import 'features/weather/bloc/theme/theme_cubit.dart';
import 'features/weather/bloc/weather/weather_bloc.dart';
import 'features/weather/views/weather_page.dart';

Future<void> runMainApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  await Hive.initFlutter();
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<WeatherBloc>()),
        BlocProvider(create: (_) => getIt<ThemeCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return Builder(
            builder: (context) {
              return MaterialApp(
                title: FlavorConfig.instance.appName,
                debugShowCheckedModeBanner: FlavorConfig.isDevelopment,
                theme: AppTheme.lightTheme(context),
                darkTheme: AppTheme.darkTheme(context),
                themeMode: themeMode,
                home: const WeatherPage(),
              );
            },
          );
        },
      ),
    );
  }
}
