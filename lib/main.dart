import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:leaforg/views/home_page.dart';

import '../shared_imports.dart';

void main() => runApp(const LeaforgApp());

const FlexSchemeColor myScheme1Light = FlexSchemeColor(
  primary: Color(0xFF000000),
  primaryVariant: Color(0xFFe6ffec),
  secondary: Color(0xFFffaa00),
  secondaryVariant: Color(0xFF1D1D1D),
  appBarColor: Color(0xFFFFFFFF),
);

const FlexSchemeColor myScheme1Dark = FlexSchemeColor(
  primary: Color(0xFFffffff),
  primaryVariant: Color(0xFF775C69),
  secondary: Color(0xFFFFC244),
  secondaryVariant: Color(0xFF026007),
  appBarColor: Color(0xFF000000),
);

final FlexSchemeColor myScheme2Light =
    FlexSchemeColor.from(primary: const Color(0xFF4C4E06));
final FlexSchemeColor myScheme2Dark =
    FlexSchemeColor.from(primary: const Color(0xFF9D9E76));

final FlexSchemeColor myScheme3Light = FlexSchemeColor.from(
  primary: const Color(0xFF993200),
  secondary: const Color(0xFF1B5C62),
);

final List<FlexSchemeData> myFlexSchemes = <FlexSchemeData>[
  ...FlexColor.schemesList,
  const FlexSchemeData(
    name: 'Toledo purple',
    description: 'Purple theme, created from full custom defined color scheme.',
    light: myScheme1Light,
    dark: myScheme1Dark,
  ),
  FlexSchemeData(
    name: 'Olive green',
    description:
        'Olive green theme, created from primary light and dark colors.',
    light: myScheme2Light,
    dark: myScheme2Dark,
  ),
  FlexSchemeData(
    name: 'Oregon orange',
    description: 'Custom orange and blue theme, from only light scheme colors.',
    light: myScheme3Light,
    // We create the dark desaturated colors from the light scheme.
    dark: myScheme3Light.toDark(),
  ),
];

class LeaforgApp extends StatefulWidget {
  const LeaforgApp({Key? key}) : super(key: key);

  @override
  _LeaforgAppState createState() => _LeaforgAppState();
}

class _LeaforgAppState extends State<LeaforgApp> {
  ThemeMode themeMode = ThemeMode.light;

  int themeIndex = 15;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leaforg',
      theme: FlexColorScheme.light(
        colors: myFlexSchemes[themeIndex].light,
        surfaceStyle: FlexSurface.medium,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: AppFonts.mainFont,
      ).toTheme,
      darkTheme: FlexColorScheme.dark(
        colors: myFlexSchemes[themeIndex].dark,
        surfaceStyle: FlexSurface.medium,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: AppFonts.mainFont,
      ).toTheme,
      themeMode: themeMode,
      home: HomePage(
        themeMode: themeMode,
        onThemeModeChanged: (ThemeMode mode) {
          setState(() {
            themeMode = mode;
          });
        },
        schemeIndex: themeIndex,
        onSchemeChanged: (int index) {
          setState(() {
            themeIndex = index;
          });
        },
        flexSchemeData: myFlexSchemes[themeIndex],
      ),
    );
  }
}
