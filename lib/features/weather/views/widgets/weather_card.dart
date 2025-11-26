import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final WeatherModel weather;

  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;
    final textStyles = context.textStyles;
    final colors = context.colors;

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Transform.scale(
          scale: 0.95 + (0.05 * value),
          child: Opacity(opacity: value, child: child),
        );
      },
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: responsive.maxContentWidth),
          child: Card(
            elevation: 4,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(responsive.padding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildAnimatedItem(
                      index: 0,
                      child: Text(
                        weather.cityName,
                        style: textStyles.displayMedium.copyWith(
                          fontSize: responsive.fontSize(28),
                        ),
                      ),
                    ),
                    SizedBox(height: responsive.spacing(8)),

                    _buildAnimatedItem(
                      index: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://openweathermap.org/img/wn/${weather.icon}@2x.png',
                            width: responsive.iconSize(80),
                            height: responsive.iconSize(80),
                          ),
                          SizedBox(width: responsive.spacing(8)),
                          Flexible(
                            child: Text(
                              weather.description.toUpperCase(),
                              style: textStyles.titleMedium.copyWith(
                                fontSize: responsive.fontSize(16),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: responsive.spacing(16)),

                    _buildAnimatedItem(
                      index: 2,
                      child: Column(
                        children: [
                          Text(
                            '${weather.temperature.toStringAsFixed(1)}°C',
                            style: textStyles.displayLarge.copyWith(
                              fontSize: responsive.fontSize(56),
                              color: colors.primary,
                            ),
                          ),
                          SizedBox(height: responsive.spacing(8)),
                          Text(
                            'Feels like ${weather.feelsLike.toStringAsFixed(1)}°C',
                            style: textStyles.bodyLarge.copyWith(
                              fontSize: responsive.fontSize(16),
                              color: colors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: responsive.spacing(24)),

                    _buildAnimatedItem(
                      index: 3,
                      child: responsive.isMobile
                          ? Column(
                              children: [
                                _buildDetailItem(
                                  context,
                                  responsive,
                                  Icons.water_drop,
                                  'Humidity',
                                  '${weather.humidity}%',
                                ),
                                SizedBox(height: responsive.spacing(16)),
                                _buildDetailItem(
                                  context,
                                  responsive,
                                  Icons.air,
                                  'Wind Speed',
                                  '${weather.windSpeed.toStringAsFixed(1)} m/s',
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildDetailItem(
                                  context,
                                  responsive,
                                  Icons.water_drop,
                                  'Humidity',
                                  '${weather.humidity}%',
                                ),
                                _buildDetailItem(
                                  context,
                                  responsive,
                                  Icons.air,
                                  'Wind Speed',
                                  '${weather.windSpeed.toStringAsFixed(1)} m/s',
                                ),
                              ],
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedItem({required int index, required Widget child}) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 600),
      curve: Interval(
        (index * 0.1).clamp(0.0, 1.0),
        1.0,
        curve: Curves.easeOutBack,
      ),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, 20 * (1 - value)),
          child: Opacity(opacity: value.clamp(0.0, 1.0), child: child),
        );
      },
      child: child,
    );
  }

  Widget _buildDetailItem(
    BuildContext context,
    ResponsiveHelper responsive,
    IconData icon,
    String label,
    String value,
  ) {
    final textStyles = context.textStyles;
    final colors = context.colors;

    return Column(
      children: [
        Icon(icon, size: responsive.iconSize(32), color: colors.secondary),
        SizedBox(height: responsive.spacing(8)),
        Text(
          label,
          style: textStyles.bodyMedium.copyWith(
            fontSize: responsive.fontSize(14),
          ),
        ),
        SizedBox(height: responsive.spacing(4)),
        Text(
          value,
          style: textStyles.titleMedium.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: responsive.fontSize(16),
          ),
        ),
      ],
    );
  }
}
