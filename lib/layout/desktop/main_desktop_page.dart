import 'package:flutter/material.dart';
import 'package:threadcarfts/components/circular_image.dart';
import 'package:threadcarfts/drawer/desktop/desktop_main_drawer.dart';
import 'package:threadcarfts/layout/email_button.dart';
import 'package:threadcarfts/layout/notification_button.dart';

import '../../color/color_select.dart';
import '../../strings/app_texts.dart';

class MainDesktopPage extends StatefulWidget {
  const MainDesktopPage({super.key});

  @override
  State<MainDesktopPage> createState() => _MainDesktopPageState();
}

class _MainDesktopPageState extends State<MainDesktopPage> {
  int emailCounter = 0;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          body: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 20),
                height: 75,
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
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(width: 70,),
                      Text("Dashboard", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),),
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
              Container( height: 1, color: Colors.black26,),
              Expanded(child: Row(
                children: [
                  Container(width:  250,),
                  Container(width: 1, color: Colors.black26,),
                  Expanded(child: Container(color: Colors.black12,))
                ],
              ))
            ],
          )
      );
  }
}