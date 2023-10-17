import 'package:flutter/material.dart';
import 'package:threadcarfts/components/circular_image.dart';
import 'package:threadcarfts/components/horizontal_divider.dart';
import 'package:threadcarfts/layout/drawer_items.dart';
import 'package:threadcarfts/strings/app_texts.dart';

import '../../strings/navigation_texts.dart';

class DesktopMainDrawer extends StatelessWidget {
  const DesktopMainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            "Vineet yadav",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          thickness: 1,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 200,
          child: const DrawerItems()
        ),
        const Divider(
          thickness: 1,
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            AppTexts.appName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
