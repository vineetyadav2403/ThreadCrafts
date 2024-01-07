import 'package:flutter/material.dart';
import 'package:threadcarfts/color/color_select.dart';
import 'package:threadcarfts/strings/navigation_texts.dart';

class TabButtons extends StatefulWidget {
  const TabButtons({super.key, required this.callback});
  final Function(String) callback;
  @override
  State<TabButtons> createState() => _TabButtonsState();
}

class _TabButtonsState extends State<TabButtons> {
  bool isHover = false;
  bool isClick = false;
  List<Map> buttonList = [
    {
      'label': DrawerTexts.dashboard,
      'active': true,
      'isHover': false,
      'icon': Icons.dashboard_customize_outlined
    },
    {
      'label': DrawerTexts.orders,
      'active': false,
      'isHover': false,
      'icon': Icons.shopping_bag_outlined
    },
    {
      'label': DrawerTexts.products,
      'active': false,
      'isHover': false,
      'icon': Icons.production_quantity_limits_sharp
    },
    {
      'label': DrawerTexts.inventory,
      'active': false,
      'isHover': false,
      'icon': Icons.inventory_outlined
    },
    {
      'label': DrawerTexts.customers,
      'active': false,
      'isHover': false,
      'icon': Icons.person_outlined
    },
    {
      'label': DrawerTexts.store,
      'active': false,
      'isHover': false,
      'icon': Icons.storefront_sharp
    },
    {
      'label': DrawerTexts.settings,
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
      widget.callback(button['label']);
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
