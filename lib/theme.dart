import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278203503),
      surfaceTint: Color(4280901034),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280309667),
      onPrimaryContainer: Color(4294967039),
      secondary: Color(4283326334),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292009983),
      onSecondaryContainer: Color(4281747044),
      tertiary: Color(4283702120),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286201998),
      onTertiaryContainer: Color(4294967039),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294572543),
      onSurface: Color(4279835681),
      onSurfaceVariant: Color(4282533713),
      outline: Color(4285757314),
      outlineVariant: Color(4291020499),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217078),
      inversePrimary: Color(4289447935),
      primaryFixed: Color(4292338431),
      onPrimaryFixed: Color(4278197055),
      primaryFixedDim: Color(4289447935),
      onPrimaryFixedVariant: Color(4278207887),
      secondaryFixed: Color(4292338431),
      onSecondaryFixed: Color(4278786871),
      secondaryFixedDim: Color(4290168811),
      onSecondaryFixedVariant: Color(4281812837),
      tertiaryFixed: Color(4294629375),
      onTertiaryFixed: Color(4281532485),
      tertiaryFixedDim: Color(4293832959),
      onTertiaryFixedVariant: Color(4284952187),
      surfaceDim: Color(4292467168),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293783028),
      surfaceContainerHigh: Color(4293388527),
      surfaceContainerHighest: Color(4293059305),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278203503),
      surfaceTint: Color(4280901034),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280309667),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281549665),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284839317),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283702120),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286201998),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572543),
      onSurface: Color(4279835681),
      onSurfaceVariant: Color(4282270541),
      outline: Color(4284178282),
      outlineVariant: Color(4285954950),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217078),
      inversePrimary: Color(4289447935),
      primaryFixed: Color(4282610882),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280638376),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284839317),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283194491),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4288241069),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286465170),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292467168),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293783028),
      surfaceContainerHigh: Color(4293388527),
      surfaceContainerHighest: Color(4293059305),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278198603),
      surfaceTint: Color(4280901034),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278206856),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279312958),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281549665),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282187858),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284623478),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294572543),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280296493),
      outline: Color(4282270541),
      outlineVariant: Color(4282270541),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217078),
      inversePrimary: Color(4293258495),
      primaryFixed: Color(4278206856),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201183),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281549665),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280036681),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284623478),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282978142),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292467168),
      surfaceBright: Color(4294572543),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294177786),
      surfaceContainer: Color(4293783028),
      surfaceContainerHigh: Color(4293388527),
      surfaceContainerHighest: Color(4293059305),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289447935),
      surfaceTint: Color(4289447935),
      onPrimary: Color(4278202214),
      primaryContainer: Color(4278206081),
      onPrimaryContainer: Color(4290827519),
      secondary: Color(4290168811),
      onSecondary: Color(4280299597),
      secondaryContainer: Color(4281286493),
      onSecondaryContainer: Color(4291024121),
      tertiary: Color(4293832959),
      onTertiary: Color(4283307106),
      tertiaryContainer: Color(4284425843),
      onTertiaryContainer: Color(4294231295),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279309080),
      onSurface: Color(4293059305),
      onSurfaceVariant: Color(4291020499),
      outline: Color(4287467676),
      outlineVariant: Color(4282533713),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
      inversePrimary: Color(4280901034),
      primaryFixed: Color(4292338431),
      onPrimaryFixed: Color(4278197055),
      primaryFixedDim: Color(4289447935),
      onPrimaryFixedVariant: Color(4278207887),
      secondaryFixed: Color(4292338431),
      onSecondaryFixed: Color(4278786871),
      secondaryFixedDim: Color(4290168811),
      onSecondaryFixedVariant: Color(4281812837),
      tertiaryFixed: Color(4294629375),
      onTertiaryFixed: Color(4281532485),
      tertiaryFixedDim: Color(4293832959),
      onTertiaryFixedVariant: Color(4284952187),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809215),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835681),
      surfaceContainer: Color(4280098853),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281546042),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289907711),
      surfaceTint: Color(4289447935),
      onPrimary: Color(4278195765),
      primaryContainer: Color(4284649953),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290431983),
      onSecondary: Color(4278392370),
      secondaryContainer: Color(4286681523),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293965823),
      onTertiary: Color(4281008186),
      tertiaryContainer: Color(4290279883),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294703871),
      onSurfaceVariant: Color(4291283671),
      outline: Color(4288652207),
      outlineVariant: Color(4286546831),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
      inversePrimary: Color(4278208145),
      primaryFixed: Color(4292338431),
      onPrimaryFixed: Color(4278194220),
      primaryFixedDim: Color(4289447935),
      onPrimaryFixedVariant: Color(4278203760),
      secondaryFixed: Color(4292338431),
      onSecondaryFixed: Color(4278194220),
      secondaryFixedDim: Color(4290168811),
      onSecondaryFixedVariant: Color(4280694355),
      tertiaryFixed: Color(4294629375),
      onTertiaryFixed: Color(4280483888),
      tertiaryFixedDim: Color(4293832959),
      onTertiaryFixedVariant: Color(4283702121),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809215),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835681),
      surfaceContainer: Color(4280098853),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281546042),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294703871),
      surfaceTint: Color(4289447935),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289907711),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294703871),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290431983),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293965823),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294703871),
      outline: Color(4291283671),
      outlineVariant: Color(4291283671),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059305),
      inversePrimary: Color(4278200666),
      primaryFixed: Color(4292732927),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289907711),
      onPrimaryFixedVariant: Color(4278195765),
      secondaryFixed: Color(4292732927),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290431983),
      onSecondaryFixedVariant: Color(4278392370),
      tertiaryFixed: Color(4294696447),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293965823),
      onTertiaryFixedVariant: Color(4281008186),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809215),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835681),
      surfaceContainer: Color(4280098853),
      surfaceContainerHigh: Color(4280822319),
      surfaceContainerHighest: Color(4281546042),
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
     scaffoldBackgroundColor: colorScheme.background,
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
