import 'package:adityanarayanswain_v6015/constants/ColorConstants.dart';
import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Localization/app_delegate.dart';
import 'Localization/applicaton.dart';
import 'loginwhatsapp/welcome.dart';

List<CameraDescription> cameras = [];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  cameras = await availableCameras();
  print("cameras$cameras");

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AppTranslationsDelegate _newLocaleDelegate;

  @override
  void initState() {
    _newLocaleDelegate = AppTranslationsDelegate();
    application.onLocaleChanged = onLocaleChange;
    super.initState();
  }

  void onLocaleChange(Locale locale) {
    setState(() {
      _newLocaleDelegate = AppTranslationsDelegate(newLocale: locale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        _newLocaleDelegate,
        AppTranslationsDelegate(),
        //provides localised strings
        GlobalMaterialLocalizations.delegate,
        //provides RTL support
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: application.supportedLocales(),
      title: '',
      theme: ThemeData(primaryColor: AppColors.teal_dark_green),
      home: const WelcomeScreen(
        title: '',
      ),
    );
  }
}
