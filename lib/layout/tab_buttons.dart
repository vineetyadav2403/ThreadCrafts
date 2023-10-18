import 'package:flutter/material.dart';
import 'package:threadcarfts/color/color_select.dart';

class TabButtons extends StatefulWidget {
  const TabButtons({super.key});

  @override
  State<TabButtons> createState() => _TabButtonsState();
}

class _TabButtonsState extends State<TabButtons> {
  bool isHover = false;
  bool isClick = false;
  List<Map> buttonList = [
    {
      'label': 'Dashboard',
      'active': true,
      'isHover': false,
      'icon': Icons.dashboard_customize_outlined
    },
    {
      'label': 'Orders',
      'active': false,
      'isHover': false,
      'icon': Icons.shopping_bag_outlined
    },
    {
      'label': 'Products',
      'active': false,
      'isHover': false,
      'icon': Icons.production_quantity_limits_sharp
    },
    {
      'label': 'Customers',
      'active': false,
      'isHover': false,
      'icon': Icons.person_outlined
    },
    {
      'label': 'Store',
      'active': false,
      'isHover': false,
      'icon': Icons.storefront_sharp
    },
    {
      'label': 'Settings',
      'active': false,
      'isHover': false,
      'icon': Icons.settings_outlined
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: buttonList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.centerLeft,
                backgroundColor: buttonList[index]['active'] ? ColorSelect.appColor: Colors.white,
                  elevation: buttonList[index]['isHover'] || buttonList[index]['active'] ? 5 : 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              onHover: (val) => onHover(buttonList[index], val),
              onPressed: () => onPressed(buttonList[index]),
              icon: Icon(buttonList[index]['icon'], color: buttonList[index]['active'] ? Colors.white: Colors.black54,),
              label: Text(buttonList[index]['label'], style: TextStyle(
                fontWeight: FontWeight.normal,
                color: buttonList[index]['active'] ? Colors.white: Colors.black54,
              ),),
            ),
          );
        });
  }

  void onPressed(Map button) {
    setState(() {
      for (var element in buttonList) {
        element['active'] = false;
      }
      button['active'] = true;
    });
  }

  void onHover(Map button, val){
    setState(() {
      for (var element in buttonList) {
        element['isHover'] = false;
      }
      button['isHover'] = val;
    });
  }
}
