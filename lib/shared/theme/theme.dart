import 'package:flutter/material.dart';

class MaterialTheme {

  const MaterialTheme(this.textTheme);
  final TextTheme textTheme;

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8d495a),
      surfaceTint: Color(0xff8d495a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd9df),
      onPrimaryContainer: Color(0xff3a0718),
      secondary: Color(0xff8e4d2e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbcc),
      onSecondaryContainer: Color(0xff351000),
      tertiary: Color(0xff7a5732),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdcbd),
      onTertiaryContainer: Color(0xff2c1600),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191b),
      onSurfaceVariant: Color(0xff524345),
      outline: Color(0xff847375),
      outlineVariant: Color(0xffd6c2c4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2f),
      inversePrimary: Color(0xffffb1c1),
      primaryFixed: Color(0xffffd9df),
      onPrimaryFixed: Color(0xff3a0718),
      primaryFixedDim: Color(0xffffb1c1),
      onPrimaryFixedVariant: Color(0xff713342),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff351000),
      secondaryFixedDim: Color(0xffffb695),
      onSecondaryFixedVariant: Color(0xff713619),
      tertiaryFixed: Color(0xffffdcbd),
      onTertiaryFixed: Color(0xff2c1600),
      tertiaryFixedDim: Color(0xffecbe91),
      onTertiaryFixedVariant: Color(0xff60401d),
      surfaceDim: Color(0xffe7d6d8),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f1),
      surfaceContainer: Color(0xfffbeaeb),
      surfaceContainerHigh: Color(0xfff5e4e6),
      surfaceContainerHighest: Color(0xffefdee0),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6c2f3e),
      surfaceTint: Color(0xff8d495a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa75f6f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff6c3315),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa86342),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff5b3c1a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff936d46),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191b),
      onSurfaceVariant: Color(0xff4d3f42),
      outline: Color(0xff6b5b5d),
      outlineVariant: Color(0xff887679),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2f),
      inversePrimary: Color(0xffffb1c1),
      primaryFixed: Color(0xffa75f6f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8a4757),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa86342),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff8b4b2c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff936d46),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff775530),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d6d8),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f1),
      surfaceContainer: Color(0xfffbeaeb),
      surfaceContainerHigh: Color(0xfff5e4e6),
      surfaceContainerHighest: Color(0xffefdee0),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff430e1e),
      surfaceTint: Color(0xff8d495a),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6c2f3e),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff401400),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6c3315),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff351c00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5b3c1a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2d2123),
      outline: Color(0xff4d3f42),
      outlineVariant: Color(0xff4d3f42),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2f),
      inversePrimary: Color(0xffffe6e9),
      primaryFixed: Color(0xff6c2f3e),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff511929),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6c3315),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4f1d03),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5b3c1a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff422706),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d6d8),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f1),
      surfaceContainer: Color(0xfffbeaeb),
      surfaceContainerHigh: Color(0xfff5e4e6),
      surfaceContainerHighest: Color(0xffefdee0),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb1c1),
      surfaceTint: Color(0xffffb1c1),
      onPrimary: Color(0xff551d2c),
      primaryContainer: Color(0xff713342),
      onPrimaryContainer: Color(0xffffd9df),
      secondary: Color(0xffffb695),
      onSecondary: Color(0xff542105),
      secondaryContainer: Color(0xff713619),
      onSecondaryContainer: Color(0xffffdbcc),
      tertiary: Color(0xffecbe91),
      onTertiary: Color(0xff462a09),
      tertiaryContainer: Color(0xff60401d),
      onTertiaryContainer: Color(0xffffdcbd),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff191113),
      onSurface: Color(0xffefdee0),
      onSurfaceVariant: Color(0xffd6c2c4),
      outline: Color(0xff9f8c8f),
      outlineVariant: Color(0xff524345),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdee0),
      inversePrimary: Color(0xff8d495a),
      primaryFixed: Color(0xffffd9df),
      onPrimaryFixed: Color(0xff3a0718),
      primaryFixedDim: Color(0xffffb1c1),
      onPrimaryFixedVariant: Color(0xff713342),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff351000),
      secondaryFixedDim: Color(0xffffb695),
      onSecondaryFixedVariant: Color(0xff713619),
      tertiaryFixed: Color(0xffffdcbd),
      onTertiaryFixed: Color(0xff2c1600),
      tertiaryFixedDim: Color(0xffecbe91),
      onTertiaryFixedVariant: Color(0xff60401d),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413738),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191b),
      surfaceContainer: Color(0xff261d1f),
      surfaceContainerHigh: Color(0xff312829),
      surfaceContainerHighest: Color(0xff3c3234),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb8c5),
      surfaceTint: Color(0xffffb1c1),
      onPrimary: Color(0xff330313),
      primaryContainer: Color(0xffc87a8b),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffbb9e),
      onSecondary: Color(0xff2d0c00),
      secondaryContainer: Color(0xffc97e5b),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff1c295),
      onTertiary: Color(0xff251200),
      tertiaryContainer: Color(0xffb28960),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff191113),
      onSurface: Color(0xfffff9f9),
      onSurfaceVariant: Color(0xffdac6c8),
      outline: Color(0xffb19ea1),
      outlineVariant: Color(0xff907f81),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdee0),
      inversePrimary: Color(0xff723443),
      primaryFixed: Color(0xffffd9df),
      onPrimaryFixed: Color(0xff2c000e),
      primaryFixedDim: Color(0xffffb1c1),
      onPrimaryFixedVariant: Color(0xff5d2232),
      secondaryFixed: Color(0xffffdbcc),
      onSecondaryFixed: Color(0xff240800),
      secondaryFixedDim: Color(0xffffb695),
      onSecondaryFixedVariant: Color(0xff5c260a),
      tertiaryFixed: Color(0xffffdcbd),
      onTertiaryFixed: Color(0xff1d0d00),
      tertiaryFixedDim: Color(0xffecbe91),
      onTertiaryFixedVariant: Color(0xff4d300e),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413738),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191b),
      surfaceContainer: Color(0xff261d1f),
      surfaceContainerHigh: Color(0xff312829),
      surfaceContainerHighest: Color(0xff3c3234),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f9),
      surfaceTint: Color(0xffffb1c1),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb8c5),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffbb9e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf8),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfff1c295),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff191113),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9f9),
      outline: Color(0xffdac6c8),
      outlineVariant: Color(0xffdac6c8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdee0),
      inversePrimary: Color(0xff4d1626),
      primaryFixed: Color(0xffffdfe4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb8c5),
      onPrimaryFixedVariant: Color(0xff330313),
      secondaryFixed: Color(0xffffe1d4),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffbb9e),
      onSecondaryFixedVariant: Color(0xff2d0c00),
      tertiaryFixed: Color(0xffffe2c8),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff1c295),
      onTertiaryFixedVariant: Color(0xff251200),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413738),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191b),
      surfaceContainer: Color(0xff261d1f),
      surfaceContainerHigh: Color(0xff312829),
      surfaceContainerHighest: Color(0xff3c3234),
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

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xffff6800),
    value: Color(0xffff6800),
    light: ColorFamily(
      color: Color(0xff8e4d2e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdbcc),
      onColorContainer: Color(0xff351000),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff8e4d2e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdbcc),
      onColorContainer: Color(0xff351000),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff8e4d2e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffdbcc),
      onColorContainer: Color(0xff351000),
    ),
    dark: ColorFamily(
      color: Color(0xffffb695),
      onColor: Color(0xff542105),
      colorContainer: Color(0xff713619),
      onColorContainer: Color(0xffffdbcc),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffb695),
      onColor: Color(0xff542105),
      colorContainer: Color(0xff713619),
      onColorContainer: Color(0xffffdbcc),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffb695),
      onColor: Color(0xff542105),
      colorContainer: Color(0xff713619),
      onColorContainer: Color(0xffffdbcc),
    ),
  );

  /// Custom Color 2
  static const customColor2 = ExtendedColor(
    seed: Color(0xffce045c),
    value: Color(0xffce045c),
    light: ColorFamily(
      color: Color(0xff8d495a),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd9df),
      onColorContainer: Color(0xff3a0718),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff8d495a),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd9df),
      onColorContainer: Color(0xff3a0718),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff8d495a),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd9df),
      onColorContainer: Color(0xff3a0718),
    ),
    dark: ColorFamily(
      color: Color(0xffffb1c1),
      onColor: Color(0xff551d2c),
      colorContainer: Color(0xff713342),
      onColorContainer: Color(0xffffd9df),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffb1c1),
      onColor: Color(0xff551d2c),
      colorContainer: Color(0xff713342),
      onColorContainer: Color(0xffffd9df),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffb1c1),
      onColor: Color(0xff551d2c),
      colorContainer: Color(0xff713342),
      onColorContainer: Color(0xffffd9df),
    ),
  );


  List<ExtendedColor> get extendedColors => [
    customColor1,
    customColor2,
  ];
}

class ExtendedColor {

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
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
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
