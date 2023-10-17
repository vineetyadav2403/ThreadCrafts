import 'package:flutter/material.dart';

class CircularImage extends StatefulWidget {
  const CircularImage({
    super.key,
    required this.borderRadius,
    required this.blurRadius,
    required this.spreadRadius,
    required this.radius
  });

  final double borderRadius;
  final double blurRadius;
  final double spreadRadius;
  final double radius;

  @override
  State<CircularImage> createState() => _CircularImageState();
}

class _CircularImageState extends State<CircularImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.borderRadius),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              blurRadius: widget.blurRadius,
              color: Colors.grey,
              spreadRadius: widget.spreadRadius,
              blurStyle: BlurStyle.outer)
        ],
      ),
      child: CircleAvatar(
        radius: widget.radius,
        backgroundColor: Colors.grey,
        //backgroundImage: const NetworkImage('https://firebasestorage.googleapis.com/v0/b/threadcrafts.appspot.com/o/IMG_20210424_184552969_BURST000_COVER_TOP_2.jpg?alt=media&token=3fb6195d-2f1e-4725-8d4a-196193711085&_gl=1*5nz2od*_ga*MTM1NjkxMzU4NS4xNjcxNTIyMTY2*_ga_CW55HF8NVT*MTY5NTkxNDQ2Mi4yMC4xLjE2OTU5MTQ2MjQuNjAuMC4w'),
      ),
    );
  }
}
