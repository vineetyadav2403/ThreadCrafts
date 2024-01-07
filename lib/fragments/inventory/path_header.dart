import 'package:flutter/material.dart';
import 'package:threadcarfts/components/clickable_text.dart';

import '../../color/color_select.dart';

class PathHeader extends StatefulWidget {
  const PathHeader({super.key});

  @override
  State<PathHeader> createState() => _PathHeaderState();
}

class _PathHeaderState extends State<PathHeader> {
  List<String> pathStrings = ['All Items', 'Men', 'Shirt', 'Full'];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
        child: Row(
          children: pathStrings.asMap().entries.map((e) {
            if (e.key == 0) {
              return ClickableText(text: e.value);
            } else {
              return Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.keyboard_arrow_right, color: Colors.black54, size: 12,),
                  const SizedBox(
                    width: 5,
                  ),
                  ClickableText(text: e.value)
                ],
              );
            }
          }).toList(),
        ),
      );
    });
  }
}
