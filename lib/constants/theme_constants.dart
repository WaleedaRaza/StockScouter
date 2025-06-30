import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF1E3A8A);
  static const Color primaryLight = Color(0xFF3B82F6);
  static const Color primaryDark = Color(0xFF1E40AF);
  static const Color primaryVariant = Color(0xFF1D4ED8);
  
  // Secondary Colors
  static const Color secondary = Color(0xFF059669);
  static const Color secondaryLight = Color(0xFF10B981);
  static const Color secondaryDark = Color(0xFF047857);
  static const Color secondaryVariant = Color(0xFF065F46);
  
  // Accent Colors
  static const Color accent = Color(0xFFF59E0B);
  static const Color accentLight = Color(0xFFFBBF24);
  static const Color accentDark = Color(0xFFD97706);
  static const Color accentVariant = Color(0xFFB45309);
  
  // Success Colors
  static const Color success = Color(0xFF10B981);
  static const Color successLight = Color(0xFF34D399);
  static const Color successDark = Color(0xFF059669);
  static const Color successVariant = Color(0xFF047857);
  
  // Warning Colors
  static const Color warning = Color(0xFFF59E0B);
  static const Color warningLight = Color(0xFFFBBF24);
  static const Color warningDark = Color(0xFFD97706);
  static const Color warningVariant = Color(0xFFB45309);
  
  // Error Colors
  static const Color error = Color(0xFFEF4444);
  static const Color errorLight = Color(0xFFF87171);
  static const Color errorDark = Color(0xFFDC2626);
  static const Color errorVariant = Color(0xFFB91C1C);
  
  // Info Colors
  static const Color info = Color(0xFF3B82F6);
  static const Color infoLight = Color(0xFF60A5FA);
  static const Color infoDark = Color(0xFF2563EB);
  static const Color infoVariant = Color(0xFF1D4ED8);
  
  // Neutral Colors
  static const Color neutral = Color(0xFF6B7280);
  static const Color neutralLight = Color(0xFF9CA3AF);
  static const Color neutralDark = Color(0xFF4B5563);
  static const Color neutralVariant = Color(0xFF374151);
  
  // Background Colors
  static const Color background = Color(0xFFF9FAFB);
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color backgroundDark = Color(0xFF111827);
  static const Color backgroundVariant = Color(0xFFF3F4F6);
  
  // Surface Colors
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFF9FAFB);
  static const Color surfaceDark = Color(0xFF1F2937);
  static const Color surfaceVariant = Color(0xFFF3F4F6);
  
  // Text Colors
  static const Color textPrimary = Color(0xFF111827);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textTertiary = Color(0xFF9CA3AF);
  static const Color textDisabled = Color(0xFFD1D5DB);
  static const Color textInverse = Color(0xFFFFFFFF);
  
  // Border Colors
  static const Color border = Color(0xFFE5E7EB);
  static const Color borderLight = Color(0xFFF3F4F6);
  static const Color borderDark = Color(0xFFD1D5DB);
  static const Color borderVariant = Color(0xFF9CA3AF);
  
  // Divider Colors
  static const Color divider = Color(0xFFE5E7EB);
  static const Color dividerLight = Color(0xFFF3F4F6);
  static const Color dividerDark = Color(0xFFD1D5DB);
  
  // Shadow Colors
  static const Color shadow = Color(0x1A000000);
  static const Color shadowLight = Color(0x0A000000);
  static const Color shadowDark = Color(0x33000000);
  
  // Overlay Colors
  static const Color overlay = Color(0x80000000);
  static const Color overlayLight = Color(0x40000000);
  static const Color overlayDark = Color(0xCC000000);
  
  // Market Colors
  static const Color marketGreen = Color(0xFF10B981);
  static const Color marketRed = Color(0xFFEF4444);
  static const Color marketYellow = Color(0xFFF59E0B);
  static const Color marketBlue = Color(0xFF3B82F6);
  static const Color marketPurple = Color(0xFF8B5CF6);
  static const Color marketPink = Color(0xFFEC4899);
  static const Color marketOrange = Color(0xFFF97316);
  static const Color marketTeal = Color(0xFF14B8A6);
  static const Color marketIndigo = Color(0xFF6366F1);
  static const Color marketCyan = Color(0xFF06B6D4);
  
  // Chart Colors
  static const Color chartLine = Color(0xFF3B82F6);
  static const Color chartArea = Color(0x1A3B82F6);
  static const Color chartGrid = Color(0xFFE5E7EB);
  static const Color chartAxis = Color(0xFF9CA3AF);
  static const Color chartTooltip = Color(0xFF1F2937);
  
  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [secondary, secondaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient accentGradient = LinearGradient(
    colors: [accent, accentLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient successGradient = LinearGradient(
    colors: [success, successLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient warningGradient = LinearGradient(
    colors: [warning, warningLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient errorGradient = LinearGradient(
    colors: [error, errorLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient marketGradient = LinearGradient(
    colors: [marketGreen, marketBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  // Dark Theme Colors
  static const Color darkBackground = Color(0xFF111827);
  static const Color darkSurface = Color(0xFF1F2937);
  static const Color darkSurfaceVariant = Color(0xFF374151);
  static const Color darkTextPrimary = Color(0xFFF9FAFB);
  static const Color darkTextSecondary = Color(0xFFD1D5DB);
  static const Color darkTextTertiary = Color(0xFF9CA3AF);
  static const Color darkBorder = Color(0xFF374151);
  static const Color darkDivider = Color(0xFF374151);
}

class AppTypography {
  // Font Families
  static const String fontFamily = 'System';
  static const String fontFamilyMono = 'Courier';
  
  // Font Sizes
  static const double fontSizeXs = 10.0;
  static const double fontSizeSm = 12.0;
  static const double fontSizeBase = 14.0;
  static const double fontSizeLg = 16.0;
  static const double fontSizeXl = 18.0;
  static const double fontSize2xl = 20.0;
  static const double fontSize3xl = 24.0;
  static const double fontSize4xl = 30.0;
  static const double fontSize5xl = 36.0;
  static const double fontSize6xl = 48.0;
  
  // Font Weights
  static const FontWeight fontWeightLight = FontWeight.w300;
  static const FontWeight fontWeightNormal = FontWeight.w400;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightSemiBold = FontWeight.w600;
  static const FontWeight fontWeightBold = FontWeight.w700;
  static const FontWeight fontWeightExtraBold = FontWeight.w800;
  static const FontWeight fontWeightBlack = FontWeight.w900;
  
  // Line Heights
  static const double lineHeightTight = 1.25;
  static const double lineHeightNormal = 1.5;
  static const double lineHeightRelaxed = 1.75;
  static const double lineHeightLoose = 2.0;
  
  // Letter Spacing
  static const double letterSpacingTight = -0.025;
  static const double letterSpacingNormal = 0.0;
  static const double letterSpacingWide = 0.025;
  static const double letterSpacingWider = 0.05;
  static const double letterSpacingWidest = 0.1;
  
  // Text Styles
  static const TextStyle displayLarge = TextStyle(
    fontSize: fontSize6xl,
    fontWeight: fontWeightBold,
    letterSpacing: letterSpacingTight,
    height: lineHeightTight,
  );
  
  static const TextStyle displayMedium = TextStyle(
    fontSize: fontSize5xl,
    fontWeight: fontWeightBold,
    letterSpacing: letterSpacingTight,
    height: lineHeightTight,
  );
  
  static const TextStyle displaySmall = TextStyle(
    fontSize: fontSize4xl,
    fontWeight: fontWeightBold,
    letterSpacing: letterSpacingTight,
    height: lineHeightTight,
  );
  
  static const TextStyle headlineLarge = TextStyle(
    fontSize: fontSize3xl,
    fontWeight: fontWeightSemiBold,
    letterSpacing: letterSpacingTight,
    height: lineHeightTight,
  );
  
  static const TextStyle headlineMedium = TextStyle(
    fontSize: fontSize2xl,
    fontWeight: fontWeightSemiBold,
    letterSpacing: letterSpacingTight,
    height: lineHeightTight,
  );
  
  static const TextStyle headlineSmall = TextStyle(
    fontSize: fontSizeXl,
    fontWeight: fontWeightSemiBold,
    letterSpacing: letterSpacingTight,
    height: lineHeightTight,
  );
  
  static const TextStyle titleLarge = TextStyle(
    fontSize: fontSizeLg,
    fontWeight: fontWeightMedium,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle titleMedium = TextStyle(
    fontSize: fontSizeBase,
    fontWeight: fontWeightMedium,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle titleSmall = TextStyle(
    fontSize: fontSizeSm,
    fontWeight: fontWeightMedium,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle bodyLarge = TextStyle(
    fontSize: fontSizeLg,
    fontWeight: fontWeightNormal,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontSize: fontSizeBase,
    fontWeight: fontWeightNormal,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontSize: fontSizeSm,
    fontWeight: fontWeightNormal,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle labelLarge = TextStyle(
    fontSize: fontSizeBase,
    fontWeight: fontWeightMedium,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle labelMedium = TextStyle(
    fontSize: fontSizeSm,
    fontWeight: fontWeightMedium,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle labelSmall = TextStyle(
    fontSize: fontSizeXs,
    fontWeight: fontWeightMedium,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle caption = TextStyle(
    fontSize: fontSizeSm,
    fontWeight: fontWeightNormal,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
  
  static const TextStyle overline = TextStyle(
    fontSize: fontSizeXs,
    fontWeight: fontWeightMedium,
    letterSpacing: letterSpacingWide,
    height: lineHeightNormal,
  );
  
  static const TextStyle code = TextStyle(
    fontFamily: fontFamilyMono,
    fontSize: fontSizeSm,
    fontWeight: fontWeightNormal,
    letterSpacing: letterSpacingNormal,
    height: lineHeightNormal,
  );
}

class AppSpacing {
  // Spacing Scale
  static const double space0 = 0.0;
  static const double space1 = 4.0;
  static const double space2 = 8.0;
  static const double space3 = 12.0;
  static const double space4 = 16.0;
  static const double space5 = 20.0;
  static const double space6 = 24.0;
  static const double space7 = 28.0;
  static const double space8 = 32.0;
  static const double space9 = 36.0;
  static const double space10 = 40.0;
  static const double space11 = 44.0;
  static const double space12 = 48.0;
  static const double space14 = 56.0;
  static const double space16 = 64.0;
  static const double space20 = 80.0;
  static const double space24 = 96.0;
  static const double space28 = 112.0;
  static const double space32 = 128.0;
  static const double space36 = 144.0;
  static const double space40 = 160.0;
  static const double space44 = 176.0;
  static const double space48 = 192.0;
  static const double space52 = 208.0;
  static const double space56 = 224.0;
  static const double space60 = 240.0;
  static const double space64 = 256.0;
  static const double space72 = 288.0;
  static const double space80 = 320.0;
  static const double space96 = 384.0;
}

class AppRadius {
  // Border Radius
  static const double radiusNone = 0.0;
  static const double radiusSm = 2.0;
  static const double radiusBase = 4.0;
  static const double radiusMd = 6.0;
  static const double radiusLg = 8.0;
  static const double radiusXl = 12.0;
  static const double radius2xl = 16.0;
  static const double radius3xl = 24.0;
  static const double radiusFull = 9999.0;
  
  // Border Radius Objects
  static const BorderRadius borderRadiusNone = BorderRadius.zero;
  static const BorderRadius borderRadiusSm = BorderRadius.all(Radius.circular(radiusSm));
  static const BorderRadius borderRadiusBase = BorderRadius.all(Radius.circular(radiusBase));
  static const BorderRadius borderRadiusMd = BorderRadius.all(Radius.circular(radiusMd));
  static const BorderRadius borderRadiusLg = BorderRadius.all(Radius.circular(radiusLg));
  static const BorderRadius borderRadiusXl = BorderRadius.all(Radius.circular(radiusXl));
  static const BorderRadius borderRadius2xl = BorderRadius.all(Radius.circular(radius2xl));
  static const BorderRadius borderRadius3xl = BorderRadius.all(Radius.circular(radius3xl));
  static const BorderRadius borderRadiusFull = BorderRadius.all(Radius.circular(radiusFull));
}

class AppShadows {
  // Shadow Elevations
  static const double elevation0 = 0.0;
  static const double elevation1 = 1.0;
  static const double elevation2 = 2.0;
  static const double elevation3 = 4.0;
  static const double elevation4 = 8.0;
  static const double elevation5 = 16.0;
  static const double elevation6 = 24.0;
  static const double elevation7 = 32.0;
  static const double elevation8 = 40.0;
  static const double elevation9 = 48.0;
  static const double elevation10 = 56.0;
  static const double elevation11 = 64.0;
  static const double elevation12 = 72.0;
  static const double elevation13 = 80.0;
  static const double elevation14 = 88.0;
  static const double elevation15 = 96.0;
  static const double elevation16 = 104.0;
  static const double elevation17 = 112.0;
  static const double elevation18 = 120.0;
  static const double elevation19 = 128.0;
  static const double elevation20 = 136.0;
  static const double elevation21 = 144.0;
  static const double elevation22 = 152.0;
  static const double elevation23 = 160.0;
  static const double elevation24 = 168.0;
  
  // Shadow Objects
  static const BoxShadow shadow0 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 0.0,
    offset: Offset(0.0, 0.0),
  );
  
  static const BoxShadow shadow1 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 1.0,
    offset: Offset(0.0, 1.0),
  );
  
  static const BoxShadow shadow2 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 2.0,
    offset: Offset(0.0, 1.0),
  );
  
  static const BoxShadow shadow3 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 4.0,
    offset: Offset(0.0, 2.0),
  );
  
  static const BoxShadow shadow4 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 8.0,
    offset: Offset(0.0, 4.0),
  );
  
  static const BoxShadow shadow5 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 16.0,
    offset: Offset(0.0, 8.0),
  );
  
  static const BoxShadow shadow6 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 24.0,
    offset: Offset(0.0, 12.0),
  );
  
  static const BoxShadow shadow7 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 32.0,
    offset: Offset(0.0, 16.0),
  );
  
  static const BoxShadow shadow8 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 40.0,
    offset: Offset(0.0, 20.0),
  );
  
  static const BoxShadow shadow9 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 48.0,
    offset: Offset(0.0, 24.0),
  );
  
  static const BoxShadow shadow10 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 56.0,
    offset: Offset(0.0, 28.0),
  );
  
  static const BoxShadow shadow11 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 64.0,
    offset: Offset(0.0, 32.0),
  );
  
  static const BoxShadow shadow12 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 72.0,
    offset: Offset(0.0, 36.0),
  );
  
  static const BoxShadow shadow13 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 80.0,
    offset: Offset(0.0, 40.0),
  );
  
  static const BoxShadow shadow14 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 88.0,
    offset: Offset(0.0, 44.0),
  );
  
  static const BoxShadow shadow15 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 96.0,
    offset: Offset(0.0, 48.0),
  );
  
  static const BoxShadow shadow16 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 104.0,
    offset: Offset(0.0, 52.0),
  );
  
  static const BoxShadow shadow17 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 112.0,
    offset: Offset(0.0, 56.0),
  );
  
  static const BoxShadow shadow18 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 120.0,
    offset: Offset(0.0, 60.0),
  );
  
  static const BoxShadow shadow19 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 128.0,
    offset: Offset(0.0, 64.0),
  );
  
  static const BoxShadow shadow20 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 136.0,
    offset: Offset(0.0, 68.0),
  );
  
  static const BoxShadow shadow21 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 144.0,
    offset: Offset(0.0, 72.0),
  );
  
  static const BoxShadow shadow22 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 152.0,
    offset: Offset(0.0, 76.0),
  );
  
  static const BoxShadow shadow23 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 160.0,
    offset: Offset(0.0, 80.0),
  );
  
  static const BoxShadow shadow24 = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 168.0,
    offset: Offset(0.0, 84.0),
  );
}

class AppTransitions {
  // Animation Durations
  static const Duration durationFast = Duration(milliseconds: 150);
  static const Duration durationNormal = Duration(milliseconds: 300);
  static const Duration durationSlow = Duration(milliseconds: 500);
  static const Duration durationVerySlow = Duration(milliseconds: 1000);
  
  // Animation Curves
  static const Curve curveFast = Curves.easeInOut;
  static const Curve curveNormal = Curves.easeInOut;
  static const Curve curveSlow = Curves.easeInOut;
  static const Curve curveVerySlow = Curves.easeInOut;
  
  // Page Transitions
  static const PageTransitionsTheme pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );
}

class ThemeConstants {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: AppTypography.fontFamily,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.textInverse,
      primaryContainer: AppColors.primaryLight,
      onPrimaryContainer: AppColors.textPrimary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.textInverse,
      secondaryContainer: AppColors.secondaryLight,
      onSecondaryContainer: AppColors.textPrimary,
      tertiary: AppColors.accent,
      onTertiary: AppColors.textInverse,
      tertiaryContainer: AppColors.accentLight,
      onTertiaryContainer: AppColors.textPrimary,
      error: AppColors.error,
      onError: AppColors.textInverse,
      errorContainer: AppColors.errorLight,
      onErrorContainer: AppColors.textPrimary,
      background: AppColors.background,
      onBackground: AppColors.textPrimary,
      surface: AppColors.surface,
      onSurface: AppColors.textPrimary,
      surfaceVariant: AppColors.surfaceVariant,
      onSurfaceVariant: AppColors.textSecondary,
      outline: AppColors.border,
      outlineVariant: AppColors.borderLight,
      shadow: AppColors.shadow,
      scrim: AppColors.overlay,
      inverseSurface: AppColors.darkSurface,
      onInverseSurface: AppColors.darkTextPrimary,
      inversePrimary: AppColors.primaryLight,
      surfaceTint: AppColors.primary,
    ),
    textTheme: const TextTheme(
      displayLarge: AppTypography.displayLarge,
      displayMedium: AppTypography.displayMedium,
      displaySmall: AppTypography.displaySmall,
      headlineLarge: AppTypography.headlineLarge,
      headlineMedium: AppTypography.headlineMedium,
      headlineSmall: AppTypography.headlineSmall,
      titleLarge: AppTypography.titleLarge,
      titleMedium: AppTypography.titleMedium,
      titleSmall: AppTypography.titleSmall,
      bodyLarge: AppTypography.bodyLarge,
      bodyMedium: AppTypography.bodyMedium,
      bodySmall: AppTypography.bodySmall,
      labelLarge: AppTypography.labelLarge,
      labelMedium: AppTypography.labelMedium,
      labelSmall: AppTypography.labelSmall,
    ),
    pageTransitionsTheme: AppTransitions.pageTransitionsTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: AppTypography.fontFamily,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryLight,
      onPrimary: AppColors.textPrimary,
      primaryContainer: AppColors.primary,
      onPrimaryContainer: AppColors.textInverse,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.textPrimary,
      secondaryContainer: AppColors.secondary,
      onSecondaryContainer: AppColors.textInverse,
      tertiary: AppColors.accentLight,
      onTertiary: AppColors.textPrimary,
      tertiaryContainer: AppColors.accent,
      onTertiaryContainer: AppColors.textInverse,
      error: AppColors.errorLight,
      onError: AppColors.textPrimary,
      errorContainer: AppColors.error,
      onErrorContainer: AppColors.textInverse,
      background: AppColors.darkBackground,
      onBackground: AppColors.darkTextPrimary,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkTextPrimary,
      surfaceVariant: AppColors.darkSurfaceVariant,
      onSurfaceVariant: AppColors.darkTextSecondary,
      outline: AppColors.darkBorder,
      outlineVariant: AppColors.darkBorder,
      shadow: AppColors.shadow,
      scrim: AppColors.overlay,
      inverseSurface: AppColors.surface,
      onInverseSurface: AppColors.textPrimary,
      inversePrimary: AppColors.primary,
      surfaceTint: AppColors.primaryLight,
    ),
    textTheme: const TextTheme(
      displayLarge: AppTypography.displayLarge,
      displayMedium: AppTypography.displayMedium,
      displaySmall: AppTypography.displaySmall,
      headlineLarge: AppTypography.headlineLarge,
      headlineMedium: AppTypography.headlineMedium,
      headlineSmall: AppTypography.headlineSmall,
      titleLarge: AppTypography.titleLarge,
      titleMedium: AppTypography.titleMedium,
      titleSmall: AppTypography.titleSmall,
      bodyLarge: AppTypography.bodyLarge,
      bodyMedium: AppTypography.bodyMedium,
      bodySmall: AppTypography.bodySmall,
      labelLarge: AppTypography.labelLarge,
      labelMedium: AppTypography.labelMedium,
      labelSmall: AppTypography.labelSmall,
    ),
    pageTransitionsTheme: AppTransitions.pageTransitionsTheme,
  );
} 