import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:leaforg/main.dart';
import 'package:leaforg/shared_imports.dart';
import 'package:leaforg/shared/subpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.themeMode,
    required this.onThemeModeChanged,
    required this.schemeIndex,
    required this.onSchemeChanged,
    required this.flexSchemeData,
  }) : super(key: key);
  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeModeChanged;
  final int schemeIndex;
  final ValueChanged<int> onSchemeChanged;
  final FlexSchemeData flexSchemeData;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;
    final TextStyle headline4 = textTheme.headline4!;
    final bool isLight = Theme.of(context).brightness == Brightness.light;
    final width = MediaQuery.of(context).size.width;
    return Material(
        child: Row(children: <Widget>[
      const SizedBox(width: 0.01),
      Expanded(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: AppBar(
                  title: const Padding(
                    padding: const EdgeInsets.only(top: 5, left: 60),
                    child: const Text(
                      'Leaforg',
                      style: TextStyle(
                        fontSize: 40,
                        color: const Color(0xFFffaa00),
                      ),
                    ),
                  ),
                  actions: const <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 60, top: 5),
                      child: AboutIconButton(),
                    ),
                  ])),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    ClipPath(
                      clipper: TopCurve(),
                      child: Container(
                        color: theme.appBarTheme.backgroundColor,
                        height: 660,
                        width: width * 1,
                        child: PageBody(
                          child: Container(
                            child: ListView(
                                padding:
                                    const EdgeInsets.all(AppConst.edgePadding),
                                children: <Widget>[
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Go Green in'
                                            '  Nairobi',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 50,
                                                color: Color(0xFFFFFFFF),
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const SizedBox(height: 30),
                                          Container(
                                            color: Colors.transparent,
                                            width: width - 850,
                                            height: 50,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 55,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    5.0),
                                                            bottomLeft: Radius
                                                                .circular(5.0)),
                                                    boxShadow: [
                                                      // to make elevation
                                                      BoxShadow(
                                                        color: Colors.black26,
                                                        offset: Offset(2, 2),
                                                        blurRadius: 6,
                                                      ),
                                                      // to make the coloured border
                                                      BoxShadow(
                                                        color: Colors.black26,
                                                        offset: Offset(0, 4),
                                                      ),
                                                    ],
                                                    color: myScheme1Light
                                                        .secondary,
                                                  ),
                                                  child: Center(
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      radius: 60,
                                                      child: Icon(
                                                        Icons
                                                            .location_searching_sharp,
                                                        color: Colors.white,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 500 - 39,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    5.0),
                                                            bottomRight: Radius
                                                                .circular(5.0)),
                                                    boxShadow: [
                                                      // to make elevation
                                                      BoxShadow(
                                                        color: Colors.black26,
                                                        offset: Offset(2, 2),
                                                        blurRadius: 6,
                                                      ),
                                                      // to make the coloured border
                                                      BoxShadow(
                                                        color: Colors.black26,
                                                        offset: Offset(0, 4),
                                                      ),
                                                    ],
                                                    color: myScheme1Light
                                                        .appBarColor,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'What\'s your address?',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFFC0C0C0),
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: Text(
                                              'Use current location',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Color(0xFFffaa00),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       vertical: AppConst.edgePadding),
                                  //   child: FlexThemeModeSwitch(
                                  //     themeMode: themeMode,
                                  //     onThemeModeChanged: onThemeModeChanged,
                                  //     flexSchemeData: flexSchemeData,
                                  //   ),
                                  // ),
                                  Center(),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 250,
                  child: PageBody(
                    child: Container(
                      child: ListView(
                          padding: const EdgeInsets.all(AppConst.edgePadding),
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 356,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/green_stores_near.png"),
                                      fit: BoxFit.fitWidth,
                                      alignment: Alignment.topRight,
                                    ),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 17),
                                      child: Text(
                                        'Green stores near you ',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Color(0xFF004E15),
                                            fontSize: 27,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: Container(
                                width: 250,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  // boxShadow: [
                                  //   // to make elevation
                                  //   BoxShadow(
                                  //     color: Colors.black12,
                                  //     offset: Offset(2, 2),
                                  //     blurRadius: 1,
                                  //   ),
                                  //   // to make the coloured border
                                  //   BoxShadow(
                                  //     color: Colors.black12,
                                  //     offset: Offset(0, 2),
                                  //   ),
                                  // ],
                                  color: myScheme1Light.primaryVariant
                                      .withOpacity(0.6),
                                ),
                                child: Center(
                                  child: Text(
                                    'See more stores',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF004E15),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                            // const Text(
                            //   'This example shows how you can use all the built in '
                            //   'color schemes in FlexColorScheme, add 3 custom schemes to '
                            //   'it and how to interactively select which scheme is used '
                            //   'to define the active theme.\n\n'
                            //   'The example also uses medium strength branded '
                            //   'background and surface colors. '
                            //   'A theme showcase widget shows the theme with several '
                            //   'common Material widgets.',
                            // ),
                          ]),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    ClipPath(
                      clipper: MiddleCurve(),
                      child: Container(
                        color: myScheme1Light.primaryVariant.withOpacity(0.6),
                        height: 1040,
                        width: width * 1,
                        child: PageBody(
                          child: Container(
                            child: ListView(
                                padding:
                                    const EdgeInsets.all(AppConst.edgePadding),
                                children: <Widget>[
                                  SizedBox(height: 130),
                                  Center(
                                    child: Text(
                                      'Join, let\'s save earth',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 290,
                                          height: 370,
                                          color: Colors.transparent,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                children: <Widget>[
                                                  Positioned(
                                                    top: 0,
                                                    left: 50,
                                                    right: 50,
                                                    bottom: 90,
                                                    child: CircleAvatar(
                                                        radius: 10,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        //radius: 200,
                                                        child: Container(
                                                          height: 140,
                                                          width: 140,
                                                          child: Image.asset(
                                                              'assets/images/save_earth.png'),
                                                        )),
                                                  ),
                                                  Container(),
                                                  Positioned(
                                                    top: 0,
                                                    left: 50,
                                                    right: 50,
                                                    bottom: 90,
                                                    child: CircleAvatar(
                                                        radius: 10,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        //radius: 200,
                                                        child: Container(
                                                          height: 140,
                                                          width: 140,
                                                          child: Image.asset(
                                                              'assets/images/save_earth.png'),
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Dispose Waste',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'The example also uses medium strength branded '
                                                'background and surface colors. '
                                                'A theme showcase widget shows the theme with several ',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Center(
                                                child: Container(
                                                  width: 170,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50)),
                                                    boxShadow: [
                                                      // to make elevation
                                                      BoxShadow(
                                                        color: Colors.black12,
                                                        offset: Offset(2, 2),
                                                        blurRadius: 1,
                                                      ),
                                                      // to make the coloured border
                                                      BoxShadow(
                                                        color: Colors.black12,
                                                        offset: Offset(0, 2),
                                                      ),
                                                    ],
                                                    color: myScheme1Light
                                                        .secondary,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Join us',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Container(
                                          width: 290,
                                          height: 370,
                                          color: Colors.transparent,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                children: <Widget>[
                                                  // Positioned(
                                                  //   top: 0,
                                                  //   left: 50,
                                                  //   right: 50,
                                                  //   bottom: 90,
                                                  //   child: CircleAvatar(
                                                  //       radius: 10,
                                                  //       backgroundColor:
                                                  //           Colors.transparent,
                                                  //       //radius: 200,
                                                  //       child: Container(
                                                  //         height: 140,
                                                  //         width: 140,
                                                  //         child: Image.asset(
                                                  //             'assets/images/save_earth.png'),
                                                  //       )),
                                                  // ),
                                                  Container(),
                                                  // Positioned(
                                                  //   top: 0,
                                                  //   left: 50,
                                                  //   right: 50,
                                                  //   bottom: 90,
                                                  //   child: CircleAvatar(
                                                  //       radius: 10,
                                                  //       backgroundColor:
                                                  //           Colors.transparent,
                                                  //       //radius: 200,
                                                  //       child: Container(
                                                  //         height: 140,
                                                  //         width: 140,
                                                  //         child: Image.asset(
                                                  //             'assets/images/save_earth.png'),
                                                  //       )),
                                                  // ),
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Let\'s Partner',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'The example also uses medium strength branded '
                                                'background and surface colors. '
                                                'A theme showcase widget shows the theme with several ',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Center(
                                                child: Container(
                                                  width: 170,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50)),
                                                    boxShadow: [
                                                      // to make elevation
                                                      BoxShadow(
                                                        color: Colors.black12,
                                                        offset: Offset(2, 2),
                                                        blurRadius: 1,
                                                      ),
                                                      // to make the coloured border
                                                      BoxShadow(
                                                        color: Colors.black12,
                                                        offset: Offset(0, 2),
                                                      ),
                                                    ],
                                                    color: myScheme1Light
                                                        .secondary,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Join us',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Container(
                                          width: 290,
                                          height: 370,
                                          color: Colors.transparent,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                children: <Widget>[
                                                  // Positioned(
                                                  //   top: 0,
                                                  //   left: 50,
                                                  //   right: 50,
                                                  //   bottom: 90,
                                                  //   child: CircleAvatar(
                                                  //       radius: 10,
                                                  //       backgroundColor:
                                                  //           Colors.transparent,
                                                  //       //radius: 200,
                                                  //       child: Container(
                                                  //         height: 140,
                                                  //         width: 140,
                                                  //         child: Image.asset(
                                                  //             'assets/images/save_earth.png'),
                                                  //       )),
                                                  // ),
                                                  Container(),
                                                  // Positioned(
                                                  //   top: 0,
                                                  //   left: 50,
                                                  //   right: 50,
                                                  //   bottom: 90,
                                                  //   child: CircleAvatar(
                                                  //       radius: 10,
                                                  //       backgroundColor:
                                                  //           Colors.transparent,
                                                  //       //radius: 200,
                                                  //       child: Container(
                                                  //         height: 140,
                                                  //         width: 140,
                                                  //         child: Image.asset(
                                                  //             'assets/images/save_earth.png'),
                                                  //       )),
                                                  // ),
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                'Careers',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'The example also uses medium strength branded '
                                                'background and surface colors. '
                                                'A theme showcase widget shows the theme with several ',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Center(
                                                child: Container(
                                                  width: 170,
                                                  height: 55,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50)),
                                                    boxShadow: [
                                                      // to make elevation
                                                      BoxShadow(
                                                        color: Colors.black12,
                                                        offset: Offset(2, 2),
                                                        blurRadius: 1,
                                                      ),
                                                      // to make the coloured border
                                                      BoxShadow(
                                                        color: Colors.black12,
                                                        offset: Offset(0, 2),
                                                      ),
                                                    ],
                                                    color: myScheme1Light
                                                        .secondary,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Join us',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // const Text(
                                  //   'This example shows how you can use all the built in '
                                  //   'color schemes in FlexColorScheme, add 3 custom schemes to '
                                  //   'it and how to interactively select which scheme is used '
                                  //   'to define the active theme.\n\n'
                                  //   'The example also uses medium strength branded '
                                  //   'background and surface colors. '
                                  //   'A theme showcase widget shows the theme with several '
                                  //   'common Material widgets.',
                                  //   style: TextStyle(
                                  //     color: Colors.white,
                                  //   ),
                                  // ),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       vertical: AppConst.edgePadding),
                                  //   child: FlexThemeModeSwitch(
                                  //     themeMode: themeMode,
                                  //     onThemeModeChanged: onThemeModeChanged,
                                  //     flexSchemeData: flexSchemeData,
                                  //   ),
                                  // ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 0,
                      left: 50,
                      right: 50,
                      bottom: 890,
                      child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.transparent,
                          //radius: 200,
                          child: Container(
                            height: 140,
                            width: 140,
                            child: Image.asset('assets/images/save_earth.png'),
                          )),
                    ),
                    new Positioned(
                      bottom: 0,
                      child: new Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 0.0),
                          child: ClipPath(
                            clipper: BottomCurve(),
                            child: Container(
                              color: myScheme1Light.secondaryVariant,
                              height: 480,
                              width: width * 1,
                              child: PageBody(
                                child: Container(
                                  child: ListView(
                                    padding: const EdgeInsets.all(
                                        AppConst.edgePadding),
                                    children: <Widget>[
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Text(
                                        'Leaforg',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            width: 232,
                                            height: 220,
                                            color: Colors.transparent,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Let\'s save earth',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Careers',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Partnership',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Dispose Waste',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Couriers',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: 232,
                                            height: 220,
                                            color: Colors.transparent,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Useful links',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'About us',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'FAQ',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Community',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Contact us',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: 232,
                                            height: 220,
                                            color: Colors.transparent,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Follow us',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Facebook',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Twitter',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Instagram',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Linked-in',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: 232,
                                            height: 220,
                                            color: Colors.transparent,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/app_store.png"),
                                                      fit: BoxFit.fitWidth,
                                                      alignment:
                                                          Alignment.topRight,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Container(
                                                  width: 120,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/google_play.png"),
                                                      fit: BoxFit.fitWidth,
                                                      alignment:
                                                          Alignment.topRight,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'TERMS & CONDITION',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'PRIVACY POLICY',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'COOKIES POLICY',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: AppConst.edgePadding),
                                        child: FlexThemeModeSwitch(
                                          themeMode: themeMode,
                                          onThemeModeChanged:
                                              onThemeModeChanged,
                                          flexSchemeData: flexSchemeData,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Container(
                //   color: Colors.transparent,
                //   child: ListView(
                //       padding: const EdgeInsets.all(AppConst.edgePadding),
                //       children: <Widget>[
                //         PopupMenuButton<int>(
                //           padding: const EdgeInsets.all(0),
                //           onSelected: onSchemeChanged,
                //           itemBuilder: (BuildContext context) =>
                //               <PopupMenuItem<int>>[
                //             for (int i = 0; i < myFlexSchemes.length; i++)
                //               PopupMenuItem<int>(
                //                 value: i,
                //                 child: ListTile(
                //                   leading: Icon(Icons.lens,
                //                       color: isLight
                //                           ? myFlexSchemes[i].light.primary
                //                           : myFlexSchemes[i].dark.primary,
                //                       size: 35),
                //                   title: Text(myFlexSchemes[i].name),
                //                 ),
                //               )
                //           ],
                //           child: ListTile(
                //             title:
                //                 Text('${myFlexSchemes[schemeIndex].name} theme'),
                //             subtitle:
                //                 Text(myFlexSchemes[schemeIndex].description),
                //             trailing: Icon(
                //               Icons.lens,
                //               color: colorScheme.primary,
                //               size: 40,
                //             ),
                //           ),
                //         ),
                //         const SizedBox(height: 8),

                //         const Padding(
                //           padding: EdgeInsets.symmetric(
                //               horizontal: AppConst.edgePadding),
                //           child: ShowThemeColors(),
                //         ),

                //         const SizedBox(height: 8),
                //         // Open a sub-page
                //         ListTile(
                //           title: const Text('Open a demo subpage'),
                //           subtitle: const Text(
                //             'The subpage will use the same '
                //             'color scheme based theme automatically.',
                //           ),
                //           trailing: const Icon(Icons.chevron_right, size: 34),
                //           onTap: () {
                //             Subpage.show(context);
                //           },
                //         ),

                //         const Divider(),
                //         Text('Theme Showcase', style: headline4),
                //         const ThemeShowcase(),
                //       ]),
                //)
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}

class MiddleCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 1764;
    final double _yScaling = size.height / 896;
    path.lineTo(1324.5 * _xScaling, 148.6 * _yScaling);
    path.cubicTo(
      1198.34 * _xScaling,
      148.6 * _yScaling,
      1078.19 * _xScaling,
      129.13 * _yScaling,
      969 * _xScaling,
      93.97 * _yScaling,
    );
    path.cubicTo(
      969 * _xScaling,
      93.97 * _yScaling,
      969 * _xScaling,
      95.19 * _yScaling,
      969 * _xScaling,
      95.19 * _yScaling,
    );
    path.cubicTo(
      965.35 * _xScaling,
      93.55 * _yScaling,
      961.68 * _xScaling,
      91.95 * _yScaling,
      958 * _xScaling,
      90.36 * _yScaling,
    );
    path.cubicTo(
      929.1866666666665 * _xScaling,
      80.73333333333332 * _yScaling,
      901.1866666666665 * _xScaling,
      70.03333333333333 * _yScaling,
      874 * _xScaling,
      58.26 * _yScaling,
    );
    path.cubicTo(
      761.9 * _xScaling,
      20.81 * _yScaling,
      637.92 * _xScaling,
      0 * _yScaling,
      507.5 * _xScaling,
      0 * _yScaling,
    );
    path.cubicTo(
      321.84 * _xScaling,
      0 * _yScaling,
      149.19 * _xScaling,
      42.15 * _yScaling,
      5.34 * _xScaling,
      114.47 * _yScaling,
    );
    path.cubicTo(
      5.34 * _xScaling,
      114.47 * _yScaling,
      0 * _xScaling,
      114.47 * _yScaling,
      0 * _xScaling,
      114.47 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      114.47 * _yScaling,
      0 * _xScaling,
      2000 * _yScaling,
      0 * _xScaling,
      2000 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      2800 * _yScaling,
      2000 * _xScaling,
      2800 * _yScaling,
      1800 * _xScaling,
      2000 * _yScaling,
    );
    path.cubicTo(
      1800 * _xScaling,
      2000 * _yScaling,
      1800 * _xScaling,
      147 * _yScaling,
      1800 * _xScaling,
      47 * _yScaling,
    );
    path.cubicTo(
      1661.68 * _xScaling,
      111.43 * _yScaling,
      1498.83 * _xScaling,
      148.6 * _yScaling,
      1324.5 * _xScaling,
      148.6 * _yScaling,
    );
    path.cubicTo(
      1324.5 * _xScaling,
      148.6 * _yScaling,
      1324.5 * _xScaling,
      148.6 * _yScaling,
      1324.5 * _xScaling,
      148.6 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class BottomCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 1764;
    final double _yScaling = size.height / 846;
    path.lineTo(1786.73 * _xScaling, 60.58 * _yScaling);
    path.cubicTo(
      1565.65 * _xScaling,
      23.63 * _yScaling,
      1249.76 * _xScaling,
      0.5 * _yScaling,
      899 * _xScaling,
      0.5 * _yScaling,
    );
    path.cubicTo(
      548.24 * _xScaling,
      0.5 * _yScaling,
      232.33 * _xScaling,
      23.63 * _yScaling,
      11.25 * _xScaling,
      60.58 * _yScaling,
    );
    path.cubicTo(
      11.25 * _xScaling,
      60.58 * _yScaling,
      0.5 * _xScaling,
      60.58 * _yScaling,
      150.5 * _xScaling,
      60.58 * _yScaling,
    );
    path.cubicTo(
      0.5 * _xScaling,
      60.58 * _yScaling,
      0.5 * _xScaling,
      62.4 * _yScaling,
      0.5 * _xScaling,
      62.4 * _yScaling,
    );
    path.cubicTo(
      0.5 * _xScaling,
      62.4 * _yScaling,
      0 * _xScaling,
      16.48 * _yScaling,
      0 * _xScaling,
      62.48 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      62.48 * _yScaling,
      0 * _xScaling,
      313.77 * _yScaling,
      0 * _xScaling,
      313.77 * _yScaling,
    );
    path.cubicTo(
      0 * _xScaling,
      313.77 * _yScaling,
      50.5 * _xScaling,
      313.85999999999996 * _yScaling,
      -50.5 * _xScaling,
      313.85999999999996 * _yScaling,
    );
    path.cubicTo(
      0.5 * _xScaling,
      313.85999999999996 * _yScaling,
      0.5 * _xScaling,
      800 * _yScaling,
      -50.5 * _xScaling,
      900 * _yScaling,
    );
    path.cubicTo(
      0.5 * _xScaling,
      900 * _yScaling,
      1800.5 * _xScaling,
      1000 * _yScaling,
      1900.5 * _xScaling,
      1000 * _yScaling,
    );
    path.cubicTo(
      1800.5 * _xScaling,
      900 * _yScaling,
      1800.5 * _xScaling,
      60.58 * _yScaling,
      1900.5 * _xScaling,
      60.58 * _yScaling,
    );
    path.cubicTo(
      1800.5 * _xScaling,
      60.58 * _yScaling,
      1786.73 * _xScaling,
      60.58 * _yScaling,
      1786.73 * _xScaling,
      60.58 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class TopCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 1764;
    final double _yScaling = size.height / 896;
    path.lineTo(901 * _xScaling, 733.16 * _yScaling);
    path.cubicTo(
      1258 * _xScaling,
      733.16 * _yScaling,
      1578.94 * _xScaling,
      759.0799999999999 * _yScaling,
      1800.5 * _xScaling,
      800.31 * _yScaling,
    );
    path.cubicTo(
      1800.5 * _xScaling,
      800.31 * _yScaling,
      1800.5 * _xScaling,
      2.16 * _yScaling,
      1800.5 * _xScaling,
      2.16 * _yScaling,
    );
    path.cubicTo(
      180.5 * _xScaling,
      -200.16 * _yScaling,
      -200.5 * _xScaling,
      -200.16 * _yScaling,
      -200.5 * _xScaling,
      -200.16 * _yScaling,
    );
    path.cubicTo(
      0.5 * _xScaling,
      2.16 * _yScaling,
      0.5 * _xScaling,
      800.5 * _yScaling,
      0.5 * _xScaling,
      800.5 * _yScaling,
    );
    path.cubicTo(
      222.09 * _xScaling,
      759.16 * _yScaling,
      543.43 * _xScaling,
      733.16 * _yScaling,
      901 * _xScaling,
      733.16 * _yScaling,
    );
    path.cubicTo(
      1001 * _xScaling,
      0.16 * _yScaling,
      2001 * _xScaling,
      0.16 * _yScaling,
      2001 * _xScaling,
      0.16 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
