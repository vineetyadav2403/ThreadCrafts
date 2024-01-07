import 'package:flutter/material.dart';

class PaginationButton extends StatefulWidget {
  const PaginationButton({super.key, required this.buttonText,
    required this.isSelected, required this.callback, required this.label});

  final String buttonText;
  final bool isSelected;
  final Function(int) callback;
  final int label;

  @override
  State<PaginationButton> createState() => _PaginationButtonState();
}

class _PaginationButtonState extends State<PaginationButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        child: Container(
            width: 30,
            height: 30,
            decoration: widget.isSelected
                ? BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                  )
                : null,
            child: Center(
              child: Text(widget.buttonText),
            )),
        onTap: () {
          widget.callback(widget.label);
        },
      ),
    );
  }
}
