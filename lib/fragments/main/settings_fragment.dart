import 'package:flutter/material.dart';

import '../test.dart';

class SettingsFragment extends StatefulWidget {
  const SettingsFragment({super.key});

  @override
  State<SettingsFragment> createState() => _SettingsFragmentState();
}

class _SettingsFragmentState extends State<SettingsFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: CarouselDemo(),
    );
  }
}
