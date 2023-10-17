import 'package:flutter/material.dart';
import 'package:threadcarfts/components/circular_image.dart';
import 'package:threadcarfts/components/horizontal_divider.dart';
import 'package:threadcarfts/strings/app_texts.dart';
import 'package:threadcarfts/strings/navigation_texts.dart';

import '../../color/color_select.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.only(top: 30),
        children: [
          const CircularImage(borderRadius: 2, blurRadius: 5, spreadRadius: 5,
          radius: 75,),
          Container(
              alignment: Alignment.center,
              height: 50,
              width: double.maxFinite,
              child: const Text("Vineet yadav",
                style: TextStyle(fontWeight: FontWeight.w400),)),
          const HorizontalDivider(height: 1, marginBottom: 10,
            marginEnd: 0, marginStart: 0,marginTop: 0,),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: const Text(
              NavigationTexts.home,
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 20),
            height: 50,
            child: const Text(
              "Manage Business",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.inventory,
              color: Colors.black,
            ),
            title: const Text(
              NavigationTexts.inventory,
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.inventory_outlined,
              color: Colors.black,
            ),
            title: const Text(
              NavigationTexts.orders,
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.payments_rounded,
              color: Colors.black,
            ),
            title: const Text(
              NavigationTexts.payment,
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.assignment_return_rounded,
              color: Colors.black,
            ),
            title: const Text(
              NavigationTexts.returns,
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.upload_file_rounded,
              color: Colors.black,
            ),
            title: const Text(
              NavigationTexts.catalogUpload,
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const HorizontalDivider(height: 1, marginBottom: 0,
            marginEnd: 0, marginStart: 0,marginTop: 30,),
          Container(
              alignment: Alignment.center,
              height: 50,
              width: double.maxFinite,
              child: const Text(AppTexts.appName,
                style: TextStyle(fontWeight: FontWeight.w400),)),
        ],
      ),
    );
  }
}
