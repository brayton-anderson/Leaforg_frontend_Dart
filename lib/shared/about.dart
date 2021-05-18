import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';

import '../main.dart';
import 'constants.dart';
import 'link_text_span.dart';

class AboutIconButton extends StatelessWidget {
  const AboutIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TargetPlatform platformIs = Theme.of(context).platform;
    final bool showIconButton = kIsWeb ||
        platformIs == TargetPlatform.windows ||
        platformIs == TargetPlatform.macOS ||
        platformIs == TargetPlatform.linux;

    return showIconButton
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
                Container(
                  width: 130,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
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
                    color: myScheme1Light.secondary,
                  ),
                  child: Center(
                    child: Text(
                      'Get started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () {
                    showAppAboutDialog(context);
                  },
                )
              ])
        : const SizedBox.shrink();
  }
}

/// This [showAppAboutDialog] function is based on the [AboutDialog] example
/// that exist(ed) in the Flutter Gallery App.
void showAppAboutDialog(BuildContext context) {
  Size _size = MediaQuery.of(context).size;
  final ThemeData themeData = Theme.of(context);
  final TextStyle aboutTextStyle = themeData.textTheme.bodyText1!;
  final TextStyle footerStyle = themeData.textTheme.caption!;
  final TextStyle linkStyle =
      themeData.textTheme.bodyText1!.copyWith(color: themeData.primaryColor);

  showAboutDialog(
    context: context,
    applicationName: AppConst.appName,
    applicationVersion: AppConst.version,
    applicationIcon: const Image(image: AssetImage(AppConst.icon)),
    applicationLegalese:
        '${AppConst.copyright} ${AppConst.developer_org}, T&C Apply. Licence: ${AppConst.license}',
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'The team building Leaforg',
              style: aboutTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: MediaQuery.of(context).size.width >= 1359
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 4,
                          child: SizedBox(
                            height: 250,
                            width: 230,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Center(
                                        child: AvatarView(
                                          radius: 45,
                                          borderWidth: 4,
                                          borderColor: Colors.greenAccent,
                                          avatarType: AvatarType.CIRCLE,
                                          backgroundColor: Colors.green[600],
                                          imagePath: AppConst.author_4_image,
                                          placeHolder: Container(
                                            child: Icon(
                                              Icons.person,
                                              size: 30,
                                            ),
                                          ),
                                          errorWidget: Container(
                                            child: Icon(
                                              Icons.error,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              LinkTextSpan(
                                                style: linkStyle,
                                                url: AppConst.author_4_url,
                                                text: AppConst.author_4,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: aboutTextStyle,
                                                text: AppConst.author_4_dept,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: footerStyle,
                                                text:
                                                    AppConst.author_4_strength,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                          elevation: 4,
                          child: SizedBox(
                            height: 250,
                            width: 230,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Center(
                                        child: AvatarView(
                                          radius: 45,
                                          borderWidth: 4,
                                          borderColor: Colors.greenAccent,
                                          avatarType: AvatarType.CIRCLE,
                                          backgroundColor: Colors.green[600],
                                          imagePath: AppConst.author_5_image,
                                          placeHolder: Container(
                                            child: Icon(
                                              Icons.person,
                                              size: 30,
                                            ),
                                          ),
                                          errorWidget: Container(
                                            child: Icon(
                                              Icons.error,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              LinkTextSpan(
                                                style: linkStyle,
                                                url: AppConst.author_5_url,
                                                text: AppConst.author_5,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: aboutTextStyle,
                                                text: AppConst.author_5_dept,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: footerStyle,
                                                text:
                                                    AppConst.author_5_strength,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                          elevation: 4,
                          child: SizedBox(
                            height: 250,
                            width: 230,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Center(
                                        child: AvatarView(
                                          radius: 45,
                                          borderWidth: 4,
                                          borderColor: Colors.greenAccent,
                                          avatarType: AvatarType.CIRCLE,
                                          backgroundColor: Colors.green[600],
                                          imagePath: AppConst.author_3_image,
                                          placeHolder: Container(
                                            child: Icon(
                                              Icons.person,
                                              size: 30,
                                            ),
                                          ),
                                          errorWidget: Container(
                                            child: Icon(
                                              Icons.error,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              LinkTextSpan(
                                                style: linkStyle,
                                                url: AppConst.author_3_url,
                                                text: AppConst.author_3,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: aboutTextStyle,
                                                text: AppConst.author_3_dept,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: footerStyle,
                                                text:
                                                    AppConst.author_3_strength,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                          elevation: 4,
                          child: SizedBox(
                            height: 250,
                            width: 230,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Center(
                                        child: AvatarView(
                                          radius: 45,
                                          borderWidth: 4,
                                          borderColor: Colors.greenAccent,
                                          avatarType: AvatarType.CIRCLE,
                                          backgroundColor: Colors.green[600],
                                          imagePath: AppConst.author_1_image,
                                          placeHolder: Container(
                                            child: Icon(
                                              Icons.person,
                                              size: 30,
                                            ),
                                          ),
                                          errorWidget: Container(
                                            child: Icon(
                                              Icons.error,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              LinkTextSpan(
                                                style: linkStyle,
                                                url: AppConst.author_1_url,
                                                text: AppConst.author_1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: aboutTextStyle,
                                                text: AppConst.author_1_dept,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: footerStyle,
                                                text:
                                                    AppConst.author_1_strength,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                          elevation: 4,
                          child: SizedBox(
                            height: 250,
                            width: 230,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Center(
                                        child: AvatarView(
                                          radius: 45,
                                          borderWidth: 4,
                                          borderColor: Colors.greenAccent,
                                          avatarType: AvatarType.CIRCLE,
                                          backgroundColor: Colors.green[600],
                                          imagePath: AppConst.author_2_image,
                                          placeHolder: Container(
                                            child: Icon(
                                              Icons.person,
                                              size: 30,
                                            ),
                                          ),
                                          errorWidget: Container(
                                            child: Icon(
                                              Icons.error,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              LinkTextSpan(
                                                style: linkStyle,
                                                url: AppConst.author_2_url,
                                                text: AppConst.author_2,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: aboutTextStyle,
                                                text: AppConst.author_2_dept,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                style: footerStyle,
                                                text:
                                                    AppConst.author_2_strength,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ],
                    )
                  : _size.width < 1359 && _size.width >= 862
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_4_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_4_url,
                                                        text: AppConst.author_4,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_4_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_4_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_5_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_5_url,
                                                        text: AppConst.author_5,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_5_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_5_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_3_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_3_url,
                                                        text: AppConst.author_3,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_3_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_3_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_1_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_1_url,
                                                        text: AppConst.author_1,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_1_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_1_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_2_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_2_url,
                                                        text: AppConst.author_2,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_2_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_2_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      : _size.width < 862 && _size.width >= 614
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Card(
                                      elevation: 4,
                                      child: SizedBox(
                                        height: 250,
                                        width: 230,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Center(
                                                    child: AvatarView(
                                                      radius: 45,
                                                      borderWidth: 4,
                                                      borderColor:
                                                          Colors.greenAccent,
                                                      avatarType:
                                                          AvatarType.CIRCLE,
                                                      backgroundColor:
                                                          Colors.green[600],
                                                      imagePath: AppConst
                                                          .author_4_image,
                                                      placeHolder: Container(
                                                        child: Icon(
                                                          Icons.person,
                                                          size: 30,
                                                        ),
                                                      ),
                                                      errorWidget: Container(
                                                        child: Icon(
                                                          Icons.error,
                                                          size: 30,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          LinkTextSpan(
                                                            style: linkStyle,
                                                            url: AppConst
                                                                .author_4_url,
                                                            text: AppConst
                                                                .author_4,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style:
                                                                aboutTextStyle,
                                                            text: AppConst
                                                                .author_4_dept,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                      child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style: footerStyle,
                                                            text: AppConst
                                                                .author_4_strength,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Card(
                                      elevation: 4,
                                      child: SizedBox(
                                        height: 250,
                                        width: 230,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Center(
                                                    child: AvatarView(
                                                      radius: 45,
                                                      borderWidth: 4,
                                                      borderColor:
                                                          Colors.greenAccent,
                                                      avatarType:
                                                          AvatarType.CIRCLE,
                                                      backgroundColor:
                                                          Colors.green[600],
                                                      imagePath: AppConst
                                                          .author_5_image,
                                                      placeHolder: Container(
                                                        child: Icon(
                                                          Icons.person,
                                                          size: 30,
                                                        ),
                                                      ),
                                                      errorWidget: Container(
                                                        child: Icon(
                                                          Icons.error,
                                                          size: 30,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          LinkTextSpan(
                                                            style: linkStyle,
                                                            url: AppConst
                                                                .author_5_url,
                                                            text: AppConst
                                                                .author_5,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style:
                                                                aboutTextStyle,
                                                            text: AppConst
                                                                .author_5_dept,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                      child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style: footerStyle,
                                                            text: AppConst
                                                                .author_5_strength,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Card(
                                      elevation: 4,
                                      child: SizedBox(
                                        height: 250,
                                        width: 230,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Center(
                                                    child: AvatarView(
                                                      radius: 45,
                                                      borderWidth: 4,
                                                      borderColor:
                                                          Colors.greenAccent,
                                                      avatarType:
                                                          AvatarType.CIRCLE,
                                                      backgroundColor:
                                                          Colors.green[600],
                                                      imagePath: AppConst
                                                          .author_3_image,
                                                      placeHolder: Container(
                                                        child: Icon(
                                                          Icons.person,
                                                          size: 30,
                                                        ),
                                                      ),
                                                      errorWidget: Container(
                                                        child: Icon(
                                                          Icons.error,
                                                          size: 30,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          LinkTextSpan(
                                                            style: linkStyle,
                                                            url: AppConst
                                                                .author_3_url,
                                                            text: AppConst
                                                                .author_3,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style:
                                                                aboutTextStyle,
                                                            text: AppConst
                                                                .author_3_dept,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                      child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style: footerStyle,
                                                            text: AppConst
                                                                .author_3_strength,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Card(
                                      elevation: 4,
                                      child: SizedBox(
                                        height: 250,
                                        width: 230,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Center(
                                                    child: AvatarView(
                                                      radius: 45,
                                                      borderWidth: 4,
                                                      borderColor:
                                                          Colors.greenAccent,
                                                      avatarType:
                                                          AvatarType.CIRCLE,
                                                      backgroundColor:
                                                          Colors.green[600],
                                                      imagePath: AppConst
                                                          .author_1_image,
                                                      placeHolder: Container(
                                                        child: Icon(
                                                          Icons.person,
                                                          size: 30,
                                                        ),
                                                      ),
                                                      errorWidget: Container(
                                                        child: Icon(
                                                          Icons.error,
                                                          size: 30,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          LinkTextSpan(
                                                            style: linkStyle,
                                                            url: AppConst
                                                                .author_1_url,
                                                            text: AppConst
                                                                .author_1,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style:
                                                                aboutTextStyle,
                                                            text: AppConst
                                                                .author_1_dept,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                      child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style: footerStyle,
                                                            text: AppConst
                                                                .author_1_strength,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Card(
                                      elevation: 4,
                                      child: SizedBox(
                                        height: 250,
                                        width: 230,
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Center(
                                                    child: AvatarView(
                                                      radius: 45,
                                                      borderWidth: 4,
                                                      borderColor:
                                                          Colors.greenAccent,
                                                      avatarType:
                                                          AvatarType.CIRCLE,
                                                      backgroundColor:
                                                          Colors.green[600],
                                                      imagePath: AppConst
                                                          .author_2_image,
                                                      placeHolder: Container(
                                                        child: Icon(
                                                          Icons.person,
                                                          size: 30,
                                                        ),
                                                      ),
                                                      errorWidget: Container(
                                                        child: Icon(
                                                          Icons.error,
                                                          size: 30,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          LinkTextSpan(
                                                            style: linkStyle,
                                                            url: AppConst
                                                                .author_2_url,
                                                            text: AppConst
                                                                .author_2,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style:
                                                                aboutTextStyle,
                                                            text: AppConst
                                                                .author_2_dept,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                      child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            style: footerStyle,
                                                            text: AppConst
                                                                .author_2_strength,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_4_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_4_url,
                                                        text: AppConst.author_4,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_4_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_4_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_5_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_5_url,
                                                        text: AppConst.author_5,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_5_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_5_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_3_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_3_url,
                                                        text: AppConst.author_3,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_3_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_3_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_1_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_1_url,
                                                        text: AppConst.author_1,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_1_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_1_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Card(
                                  elevation: 4,
                                  child: SizedBox(
                                    height: 250,
                                    width: 230,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Center(
                                                child: AvatarView(
                                                  radius: 45,
                                                  borderWidth: 4,
                                                  borderColor:
                                                      Colors.greenAccent,
                                                  avatarType: AvatarType.CIRCLE,
                                                  backgroundColor:
                                                      Colors.green[600],
                                                  imagePath:
                                                      AppConst.author_2_image,
                                                  placeHolder: Container(
                                                    child: Icon(
                                                      Icons.person,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  errorWidget: Container(
                                                    child: Icon(
                                                      Icons.error,
                                                      size: 30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      LinkTextSpan(
                                                        style: linkStyle,
                                                        url: AppConst
                                                            .author_2_url,
                                                        text: AppConst.author_2,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: aboutTextStyle,
                                                        text: AppConst
                                                            .author_2_dept,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        style: footerStyle,
                                                        text: AppConst
                                                            .author_2_strength,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    style: aboutTextStyle,
                    text: 'We are building'
                        '${AppConst.appName} as a market-place for green consuption in '
                        'Africa, Asia & Europe. This amazing solution was ',
                  ),
                  LinkTextSpan(
                    style: linkStyle,
                    url: AppConst.packageUrl,
                    text: 'Built by Andie',
                  ),
                  TextSpan(
                    style: aboutTextStyle,
                    text:
                        '. Managed by Andie. We believe this solution will reduce  '
                        'pollution on earth and set us on onother trajectory of green consuption.\n\n',
                  ),
                  TextSpan(
                    style: footerStyle,
                    text: 'Built with ${AppConst.flutterVersion}, '
                        'using ${AppConst.packageVersion}\n\n',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
