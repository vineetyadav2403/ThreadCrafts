import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key, required this.widget});
  final Widget widget;
  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      surfaceTintColor: Colors.white,
      color: Colors.white,
      child: widget.widget,
    );
  }
}
