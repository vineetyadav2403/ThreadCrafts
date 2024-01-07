import 'package:flutter/material.dart';
import 'package:threadcarfts/responsive/dimensions.dart';
import 'package:threadcarfts/strings/app_texts.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: tabBoxSize,
          child: Center( child: Text(AppTexts.appName),),),
        Expanded(child: Center(child: Text(AppTexts.appName),))
      ],
    );
  }
}
