import 'package:flutter/material.dart';

import '../components/Carousel/full_screen_slider.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:  (BuildContext context, BoxConstraints constraints){
      return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        surfaceTintColor: Colors.white,
        color: Colors.white,
        child: Container(
          child: Column(
            children: [
              Text("Product Information"),
              FullScreenSliderWithIndicator(),
            ],
          ),
        ),
      );
    });
  }
}
