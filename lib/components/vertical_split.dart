import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:threadcarfts/responsive/dimensions.dart';


class SplitView extends StatefulWidget {
  SplitView({super.key, required this.leftWidget, required this.rightWidget, required this.ratio});

  Widget leftWidget;
  Widget rightWidget;
  double ratio;

  @override
  State<SplitView> createState() => _SplitViewState();
}

class _SplitViewState extends State<SplitView> {

  double leftWidth = 100;
  double _dividerWidth = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - tabBoxSize,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            leftWidth = widget.ratio * constraints.maxWidth;
            double rightWidth = (1 - widget.ratio) * constraints.maxWidth - _dividerWidth;
            return Row(
              children: [
                SizedBox(width: leftWidth,
                  child: widget.leftWidget,),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: SizedBox(
                    width: _dividerWidth,
                    child: const RotationTransition(
                      child: Icon(Icons.drag_handle),
                      turns: AlwaysStoppedAnimation(0.25),
                    ),
                  ),
                  onPanUpdate: (DragUpdateDetails details) {
                    setState(() {
                      widget.ratio += details.delta.dx / constraints.maxWidth;
                      if (widget.ratio > 1)
                        widget.ratio = 1;
                      else if (widget.ratio < 0.0) widget.ratio = 0.0;
                    });
                  },
                ),
                SizedBox(width: rightWidth, child: widget.rightWidget,),
              ],
            );
          }
      ),
    );
  }
}
