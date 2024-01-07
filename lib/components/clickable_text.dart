import 'package:flutter/material.dart';

import '../color/color_select.dart';

class ClickableText extends StatefulWidget {
  const ClickableText({super.key, required this.text});
  final String text;

  @override
  State<ClickableText> createState() => _ClickableTextState();
}

class _ClickableTextState extends State<ClickableText> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (val) {
        setState(() {
          isHovered = val;
        });
      },
      onTap: (){},
      child: Text(widget.text,
          style: isHovered ? const TextStyle(
              decoration: TextDecoration.underline,
              color: ColorSelect.appColor,
              decorationColor: ColorSelect.appColor)
              : const TextStyle(color: Colors.black54)),
    );
  }
}
