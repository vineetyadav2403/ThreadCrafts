import 'package:flutter/material.dart';
import 'package:threadcarfts/color/color_select.dart';

import '../strings/navigation_texts.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(
            Icons.home,
            color: ColorSelect.iconColor,
          ),
          title: const Text(
            NavigationTexts.home,
            style: TextStyle(color: ColorSelect.iconColor),
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
            style: TextStyle(color: Colors.white54),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.inventory,
            color: ColorSelect.iconColor,
          ),
          title: const Text(
            NavigationTexts.inventory,
            style: TextStyle(color: ColorSelect.iconColor),
          ),
          onTap: () {
            //Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.inventory_outlined,
            color: ColorSelect.iconColor,
          ),
          title: const Text(
            NavigationTexts.orders,
            style: TextStyle(color: ColorSelect.iconColor),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.payments_rounded,
            color: ColorSelect.iconColor,
          ),
          title: const Text(
            NavigationTexts.payment,
            style: TextStyle(color: ColorSelect.iconColor),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.assignment_return_rounded,
            color: ColorSelect.iconColor,
          ),
          title: const Text(
            NavigationTexts.returns,
            style: TextStyle(color: ColorSelect.iconColor),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.upload_file_rounded,
            color: ColorSelect.iconColor,
          ),
          title: const Text(
            NavigationTexts.catalogUpload,
            style: TextStyle(color: ColorSelect.iconColor),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
