import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCards extends StatefulWidget {
  const ProductCards({super.key});

  @override
  State<ProductCards> createState() => _ProductCardsState();
}

class _ProductCardsState extends State<ProductCards> {
  List<String> items = [
    "https://firebasestorage.googleapis.com/v0/b/threadcrafts.appspot.com/o/IMG_20210424_184552969_BURST000_COVER_TOP_2.jpg?alt=media&token=3fb6195d-2f1e-4725-8d4a-196193711085&_gl=1*5nz2od*_ga*MTM1NjkxMzU4NS4xNjcxNTIyMTY2*_ga_CW55HF8NVT*MTY5NTkxNDQ2Mi4yMC4xLjE2OTU5MTQ2MjQuNjAuMC4w",
    "https://firebasestorage.googleapis.com/v0/b/threadcrafts.appspot.com/o/IMG_20210424_184552969_BURST000_COVER_TOP_2.jpg?alt=media&token=3fb6195d-2f1e-4725-8d4a-196193711085&_gl=1*5nz2od*_ga*MTM1NjkxMzU4NS4xNjcxNTIyMTY2*_ga_CW55HF8NVT*MTY5NTkxNDQ2Mi4yMC4xLjE2OTU5MTQ2MjQuNjAuMC4w",
    "https://firebasestorage.googleapis.com/v0/b/threadcrafts.appspot.com/o/IMG_20210424_184552969_BURST000_COVER_TOP_2.jpg?alt=media&token=3fb6195d-2f1e-4725-8d4a-196193711085&_gl=1*5nz2od*_ga*MTM1NjkxMzU4NS4xNjcxNTIyMTY2*_ga_CW55HF8NVT*MTY5NTkxNDQ2Mi4yMC4xLjE2OTU5MTQ2MjQuNjAuMC4w"
  ];
  final FixedExtentScrollController fixedExtentScrollController = FixedExtentScrollController();
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        children: [
             CarouselSlider(
                items: items.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          decoration: BoxDecoration(color: Colors.black12),
                          child: Image.network(i));
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
            ),
          Text(
            "Brand Name",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("Men Slim Fit Checkered Spread Collar Casual Shirt")
        ],
      ),
    );
  }
}
