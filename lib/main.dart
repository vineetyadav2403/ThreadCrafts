import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:threadcarfts/color/color_select.dart';
import 'package:threadcarfts/drawer/mobile/main_drawer.dart';
import 'package:threadcarfts/layout/desktop/main_desktop_page.dart';
import 'package:threadcarfts/responsive/responsive_layout.dart';
import 'package:threadcarfts/strings/app_texts.dart';

import 'firebase_options.dart';
import 'layout/mobile/home.dart';
import 'layout/mobile/main_mobile_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "Hostel",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTexts.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorSelect.appColor),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(mobileWidget: MainPage(),
        desktopWidget: MainDesktopPage(),),
      debugShowCheckedModeBanner: false,
    );
  }
}
