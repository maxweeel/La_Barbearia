import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff35618e),
      surfaceTint: Color(0xff35618e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd1e4ff),
      onPrimaryContainer: Color(0xff001d35),
      secondary: Color(0xff37618e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd2e4ff),
      onSecondaryContainer: Color(0xff001c37),
      tertiary: Color(0xff705289),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff2daff),
      onTertiaryContainer: Color(0xff290c41),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff1a1b21),
      onSurfaceVariant: Color(0xff42474e),
      outline: Color(0xff73777f),
      outlineVariant: Color(0xffc3c7cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xff9fcafd),
      primaryFixed: Color(0xffd1e4ff),
      onPrimaryFixed: Color(0xff001d35),
      primaryFixedDim: Color(0xff9fcafd),
      onPrimaryFixedVariant: Color(0xff184974),
      secondaryFixed: Color(0xffd2e4ff),
      onSecondaryFixed: Color(0xff001c37),
      secondaryFixedDim: Color(0xffa1c9fd),
      onSecondaryFixedVariant: Color(0xff1b4975),
      tertiaryFixed: Color(0xfff2daff),
      onTertiaryFixed: Color(0xff290c41),
      tertiaryFixedDim: Color(0xffddb9f8),
      onTertiaryFixedVariant: Color(0xff573a70),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff114570),
      surfaceTint: Color(0xff35618e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4c77a5),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff164571),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff4f77a6),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff53366b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8868a1),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff1a1b21),
      onSurfaceVariant: Color(0xff3e434a),
      outline: Color(0xff5b5f67),
      outlineVariant: Color(0xff767b83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xff9fcafd),
      primaryFixed: Color(0xff4c77a5),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff325f8b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff4f77a6),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff355e8c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8868a1),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6e4f86),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002440),
      surfaceTint: Color(0xff35618e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff114570),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002342),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff164571),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff311448),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff53366b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff20242b),
      outline: Color(0xff3e434a),
      outlineVariant: Color(0xff3e434a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xffe1edff),
      primaryFixed: Color(0xff114570),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002e51),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff164571),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff002e53),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff53366b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3c1f53),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9fcafd),
      surfaceTint: Color(0xff9fcafd),
      onPrimary: Color(0xff003257),
      primaryContainer: Color(0xff184974),
      onPrimaryContainer: Color(0xffd1e4ff),
      secondary: Color(0xffa1c9fd),
      onSecondary: Color(0xff00325a),
      secondaryContainer: Color(0xff1b4975),
      onSecondaryContainer: Color(0xffd2e4ff),
      tertiary: Color(0xffddb9f8),
      onTertiary: Color(0xff402357),
      tertiaryContainer: Color(0xff573a70),
      onTertiaryContainer: Color(0xfff2daff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff121318),
      onSurface: Color(0xffe2e2e9),
      onSurfaceVariant: Color(0xffc3c7cf),
      outline: Color(0xff8d9199),
      outlineVariant: Color(0xff42474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff35618e),
      primaryFixed: Color(0xffd1e4ff),
      onPrimaryFixed: Color(0xff001d35),
      primaryFixedDim: Color(0xff9fcafd),
      onPrimaryFixedVariant: Color(0xff184974),
      secondaryFixed: Color(0xffd2e4ff),
      onSecondaryFixed: Color(0xff001c37),
      secondaryFixedDim: Color(0xffa1c9fd),
      onSecondaryFixedVariant: Color(0xff1b4975),
      tertiaryFixed: Color(0xfff2daff),
      onTertiaryFixed: Color(0xff290c41),
      tertiaryFixedDim: Color(0xffddb9f8),
      onTertiaryFixedVariant: Color(0xff573a70),
      surfaceDim: Color(0xff121318),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0d0e13),
      surfaceContainerLow: Color(0xff1a1b21),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa5ceff),
      surfaceTint: Color(0xff9fcafd),
      onPrimary: Color(0xff00172d),
      primaryContainer: Color(0xff6994c3),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffa8cdff),
      onSecondary: Color(0xff00172e),
      secondaryContainer: Color(0xff6c93c4),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe1bdfc),
      onTertiary: Color(0xff24063b),
      tertiaryContainer: Color(0xffa584bf),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121318),
      onSurface: Color(0xfffcfaff),
      onSurfaceVariant: Color(0xffc7cbd3),
      outline: Color(0xff9fa3ab),
      outlineVariant: Color(0xff7f838b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff194a76),
      primaryFixed: Color(0xffd1e4ff),
      onPrimaryFixed: Color(0xff001224),
      primaryFixedDim: Color(0xff9fcafd),
      onPrimaryFixedVariant: Color(0xff003861),
      secondaryFixed: Color(0xffd2e4ff),
      onSecondaryFixed: Color(0xff001226),
      secondaryFixedDim: Color(0xffa1c9fd),
      onSecondaryFixedVariant: Color(0xff003863),
      tertiaryFixed: Color(0xfff2daff),
      onTertiaryFixed: Color(0xff1e0136),
      tertiaryFixedDim: Color(0xffddb9f8),
      onTertiaryFixedVariant: Color(0xff46295e),
      surfaceDim: Color(0xff121318),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0d0e13),
      surfaceContainerLow: Color(0xff1a1b21),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33343a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffafaff),
      surfaceTint: Color(0xff9fcafd),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa5ceff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffafaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffa8cdff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fb),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe1bdfc),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffafaff),
      outline: Color(0xffc7cbd3),
      outlineVariant: Color(0xffc7cbd3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff002c4d),
      primaryFixed: Color(0xffd8e8ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa5ceff),
      onPrimaryFixedVariant: Color(0xff00172d),
      secondaryFixed: Color(0xffd9e8ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffa8cdff),
      onSecondaryFixedVariant: Color(0xff00172e),
      tertiaryFixed: Color(0xfff4e0ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe1bdfc),
      onTertiaryFixedVariant: Color(0xff24063b),
      surfaceDim: Color(0xff121318),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0d0e13),
      surfaceContainerLow: Color(0xff1a1b21),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33343a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
