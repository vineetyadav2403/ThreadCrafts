import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:threadcarfts/color/color_select.dart';

class HorizontalNumberPicker extends StatefulWidget {
  const HorizontalNumberPicker({super.key});

  @override
  State<HorizontalNumberPicker> createState() => _HorizontalNumberPickerState();
}

class _HorizontalNumberPickerState extends State<HorizontalNumberPicker> {
  int _currentValue = 10;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 15.0,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.grey.shade200,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          alignment: Alignment.center,
          height: 40,
        ),
        Positioned(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                    offset: const Offset(
                      0.0,
                      0.0,
                    ),
                  ),
                ],
              ),
            )),
        Container(
          alignment: Alignment.center,
          child: NumberPicker(
            axis: Axis.horizontal,
            itemHeight: 45,
            itemWidth: 45.0,
            step: 5,
            infiniteLoop: true,
            selectedTextStyle: const TextStyle(
              fontSize: 18.0,
              color: ColorSelect.appColor,
              fontWeight: FontWeight.w500,
            ),
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 12.0,
            ),
            itemCount: 3,
            value: _currentValue,
            minValue: 0,
            maxValue: 50,
            onChanged: (v) {
              setState(() {
                _currentValue = v;
              });
            },
          ),
        ),
      ],
    );
  }
}
