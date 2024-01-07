import 'dart:math';

import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container()),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.cancel_sharp))
            ],
          ),
          Row(
            children: [
              Flexible(child: Container(height:400,color: Colors.red,), flex: 1,),
              Flexible(child: Container(height:400,color: Colors.pink,), flex: 10,),
              Flexible(child: Container(height:400,color: Colors.yellow,), flex: 20,)
            ],
          )
        ],
      ),
    );
  }
}
