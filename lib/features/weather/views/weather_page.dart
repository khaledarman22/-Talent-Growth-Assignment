import 'package:flutter/material.dart';
import 'package:flutter_assignment/features/weather/views/widgets/weather_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../bloc/theme/theme_cubit.dart';
import '../bloc/weather/weather_bloc.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _searchWeather(BuildContext context) {
    final city = _searchController.text.trim();
    if (city.isNotEmpty) {
      context.read<WeatherBloc>().add(GetWeather(city));
    }
  }

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;
    final colors = context.colors;
    final textStyles = context.textStyles;

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App', style: textStyles.titleLarge),
        actions: [
          IconButton(
            icon: Icon(
              Icons.brightness_6,
              size: responsive.iconSize(24),
              color: colors.textPrimary,
            ),
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: responsive.maxContentWidth),
          child: Padding(
            padding: EdgeInsets.all(responsive.padding),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  style: textStyles.bodyLarge,
                  decoration: InputDecoration(
                    hintText: 'Enter city name',
                    hintStyle: textStyles.bodyMedium,
                    prefixIcon: Icon(
                      Icons.search,
                      size: responsive.iconSize(24),
                      color: colors.textSecondary,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.clear,
                        size: responsive.iconSize(24),
                        color: colors.textSecondary,
                      ),
                      onPressed: () {
                        _searchController.clear();
                        context.read<WeatherBloc>().add(ClearWeather());
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onSubmitted: (_) => _searchWeather(context),
                ),
                SizedBox(height: responsive.spacing(16)),

                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      final state = context.read<WeatherBloc>().state;
                      if (state is WeatherLoaded) {
                        context.read<WeatherBloc>().add(
                          GetWeather(state.weather.cityName),
                        );
                      }
                    },
                    child: BlocBuilder<WeatherBloc, WeatherState>(
                      builder: (context, state) {
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: SlideTransition(
                                    position: Tween<Offset>(
                                      begin: const Offset(0.0, 0.05),
                                      end: Offset.zero,
                                    ).animate(animation),
                                    child: child,
                                  ),
                                );
                              },
                          child: _buildContent(
                            context,
                            state,
                            responsive,
                            colors,
                            textStyles,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WeatherState state,
    ResponsiveHelper responsive,
    AppColorsExtension colors,
    AppTextStylesExtension textStyles,
  ) {
    if (state is WeatherLoading) {
      return Center(
        key: const ValueKey('loading'),
        child: CircularProgressIndicator(
          strokeWidth: responsive.isMobile ? 3 : 4,
          color: colors.primary,
        ),
      );
    }

    if (state is WeatherError) {
      return Center(
        key: const ValueKey('error'),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: responsive.iconSize(64),
                color: colors.error,
              ),
              SizedBox(height: responsive.spacing(16)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: responsive.padding),
                child: Text(
                  state.message,
                  textAlign: TextAlign.center,
                  style: textStyles.bodyLarge.copyWith(color: colors.error),
                ),
              ),
            ],
          ),
        ),
      );
    }

    if (state is WeatherLoaded) {
      return SingleChildScrollView(
        key: const ValueKey('loaded'),
        physics: const AlwaysScrollableScrollPhysics(),
        child: WeatherCard(weather: state.weather),
      );
    }

    return Center(
      key: const ValueKey('initial'),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: responsive.padding),
          child: Text(
            'Search for a city to see the weather',
            textAlign: TextAlign.center,
            style: textStyles.bodyMedium,
          ),
        ),
      ),
    );
  }
}
