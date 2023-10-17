import 'package:flutter/material.dart';

class EmailButton extends StatefulWidget {
  const EmailButton({super.key});

  @override
  State<EmailButton> createState() => _EmailButtonState();
}

class _EmailButtonState extends State<EmailButton> {
  int emailCounter = 10;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        IconButton(onPressed: () {
          setState(() {
            emailCounter = 0;
          });
        }, icon: Icon(Icons.email_outlined)),
        emailCounter != 0 ? new Positioned(
          right: 5,
          top: 5,
          child: new Container(
            padding: EdgeInsets.all(2),
            decoration: new BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: BoxConstraints(
              minWidth: 14,
              minHeight: 14,
            ),
            child: Text(
              '$emailCounter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ) : new Container()
      ],);
  }
}
