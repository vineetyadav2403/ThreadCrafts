import 'package:flutter/material.dart';

class ProductDetailsPrice extends StatefulWidget {
  const ProductDetailsPrice({super.key});

  @override
  State<ProductDetailsPrice> createState() => _ProductDetailsPriceState();
}

class _ProductDetailsPriceState extends State<ProductDetailsPrice> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        surfaceTintColor: Colors.white,
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Quantity", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w200),),
                  Text("12000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),)
                ],
              ),
              Column(
                children: [
                  Text("Min Level", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w200),),
                  Text("12", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),)
                ],
              ),
              Column(
                children: [
                  Text("Price", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w200),),
                  Text("1200",  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),)
                ],
              ),
              Column(
                children: [
                  Text("Total value", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w200),),
                  Text("12000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),)
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
