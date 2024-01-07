import 'package:flutter/material.dart';
import 'package:threadcarfts/components/circular_image.dart';
import 'package:threadcarfts/footer.dart';
import 'package:threadcarfts/fragments/main/customers_fragment.dart';
import 'package:threadcarfts/fragments/main/dashboard_fragment.dart';
import 'package:threadcarfts/fragments/main/inventory_fragment.dart';
import 'package:threadcarfts/fragments/main/orders_fragment.dart';
import 'package:threadcarfts/fragments/main/settings_fragment.dart';
import 'package:threadcarfts/fragments/main/store_fragment.dart';
import 'package:threadcarfts/layout/email_button.dart';
import 'package:threadcarfts/layout/notification_button.dart';
import 'package:threadcarfts/layout/tab_buttons.dart';
import 'package:threadcarfts/strings/navigation_texts.dart';

import '../../fragments/main/products_fragment.dart';
import '../../responsive/dimensions.dart';
import '../../strings/app_texts.dart';

class MainDesktopPage extends StatefulWidget {
  const MainDesktopPage({super.key});

  @override
  State<MainDesktopPage> createState() => _MainDesktopPageState();
}

class _MainDesktopPageState extends State<MainDesktopPage> {
  String tabName = DrawerTexts.inventory;
  int emailCounter = 0;

  void updateTabName(String tabName) {
    setState(() {
      this.tabName = tabName;
    });
  }

  StatefulWidget selectFragments(String tabName) {
    switch(tabName) {
      case DrawerTexts.dashboard:
        return const DashboardFragment();
      case DrawerTexts.orders:
        return const OrdersFragment();
      case DrawerTexts.products:
        return const ProductFragments();
      case DrawerTexts.customers:
        return const CustomerFragment();
      case DrawerTexts.settings:
        return const SettingsFragment();
      case DrawerTexts.store:
        return const StoreFragment();
      case DrawerTexts.inventory:
        return const InventoryFragment();
      default:
        return const DashboardFragment();
    }
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 20),
                height: appBarWidth,
                color: Colors.white,
                child: Center(
                  child: Row(
                    children: [
                      Icon(Icons.ac_unit),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppTexts.appName,
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(width: 70,),
                      Text(tabName, style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 20),),
                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: null,
                              icon: Icon(Icons.search, color: Colors.blue,)),
                          Text("Search", ),
                          SizedBox(width: 30,),
                          EmailButton(),
                          NotificationButton(),
                          SizedBox(width: 20,),
                          Text("Vineet yadav"),
                          SizedBox(width: 5,),
                          CircularImage(radius: 20, borderRadius: 1, blurRadius: 0,
                              spreadRadius: 0),
                          IconButton(onPressed: null,
                            icon: Icon(Icons.expand_more_rounded, color: Colors.black,),
                          ),
                          SizedBox(width: 2,),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              Container( height: divderSize, color: Colors.black26,),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - appBarWidth - divderSize,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: tabBoxSize,
                            height: MediaQuery.of(context).size.height - appBarWidth - divderSize - 10 - footerSize,
                            margin: const EdgeInsets.only(top: 10),
                            child: TabButtons(callback: updateTabName),
                          ),
                          const SizedBox(width: tabBoxSize, height: footerSize,
                            child: Center(child: Text(AppTexts.appName),),)
                        ],
                      ),
                      selectFragments(tabName)
                ],
              ))
            ],
          )
      );
  }
}