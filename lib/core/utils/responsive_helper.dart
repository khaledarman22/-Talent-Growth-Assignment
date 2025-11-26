import 'package:flutter/material.dart';

class ResponsiveHelper {
  final BuildContext context;

  ResponsiveHelper(this.context);

  double get width => MediaQuery.of(context).size.width;

  double get height => MediaQuery.of(context).size.height;

  bool get isMobile => width < 600;

  bool get isTablet => width >= 600 && width < 900;

  bool get isDesktop => width >= 900;

  double get padding {
    if (isMobile) return 16.0;
    if (isTablet) return 24.0;
    return 32.0;
  }

  double fontSize(double baseFontSize) {
    if (isMobile) return baseFontSize;
    if (isTablet) return baseFontSize * 1.1;
    return baseFontSize * 1.2;
  }

  double iconSize(double baseIconSize) {
    if (isMobile) return baseIconSize;
    if (isTablet) return baseIconSize * 1.2;
    return baseIconSize * 1.4;
  }

  double spacing(double baseSpacing) {
    if (isMobile) return baseSpacing;
    if (isTablet) return baseSpacing * 1.2;
    return baseSpacing * 1.5;
  }

  double get maxContentWidth {
    if (isMobile) return width;
    if (isTablet) return 700;
    return 900;
  }
}

extension ResponsiveContext on BuildContext {
  ResponsiveHelper get responsive => ResponsiveHelper(this);
}
