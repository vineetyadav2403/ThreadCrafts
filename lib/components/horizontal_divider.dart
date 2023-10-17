import 'package:flutter/material.dart';

class HorizontalDivider extends StatefulWidget {
  const HorizontalDivider({
    super.key,
    required this.height,
    required this.marginBottom,
    required this.marginEnd,
    required this.marginStart,
    required this.marginTop
  });

  final double height;
  final double marginTop;
  final double marginBottom;
  final double marginStart;
  final double marginEnd;

  @override
  State<HorizontalDivider> createState() => _HorizontalDividerState();
}

class _HorizontalDividerState extends State<HorizontalDivider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: widget.marginBottom,
          top: widget.marginTop, left: widget.marginStart,
          right: widget.marginEnd),
      height: 1,
      color: Colors.grey,
    );
  }
}
