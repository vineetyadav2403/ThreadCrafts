import 'package:flutter/material.dart';

class NotificationButton extends StatefulWidget {
  const NotificationButton({super.key});

  @override
  State<NotificationButton> createState() => _NotificationButtonState();
}

class _NotificationButtonState extends State<NotificationButton> {
  int notificationCounter = 10;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
      IconButton(onPressed: () {
        setState(() {
          notificationCounter = 0;
        });
      }, icon: Icon(Icons.notifications_none_rounded)),
      notificationCounter != 0 ? new Positioned(
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
            '$notificationCounter',
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
