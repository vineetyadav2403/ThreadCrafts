import 'package:flutter/material.dart';

import '../../color/color_select.dart';
import '../../drawer/mobile/main_drawer.dart';
import '../../strings/app_texts.dart';
import 'home.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(
          title: const Text(
            AppTexts.appName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: ColorSelect.appColor,
        ),
        body:const Home()
    );
  }
}
