import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../fragments/test.dart';

class FullScreenSliderWithIndicator extends StatefulWidget {
  const FullScreenSliderWithIndicator({super.key});

  @override
  State<FullScreenSliderWithIndicator> createState() =>
      _FullScreenSliderWithIndicatorState();
}

class _FullScreenSliderWithIndicatorState
    extends State<FullScreenSliderWithIndicator> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List<double> ratingList = [1, 1, 1, 0.5, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          final double textPadding = 10;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      height: height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: imgList
                      .map((item) => Container(
                            child: Center(
                                child: Image.network(
                              item,
                              fit: BoxFit.cover,
                              height: height,
                            )),
                          ))
                      .toList(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 7.0,
                      height: 7.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: textPadding),
                child: Text(
                  "Brand Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Roboto',),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: textPadding, right: textPadding),
                child: Text(
                  "Google Pixel 7 (Lemongrass, 128 GB)  (8 GB RAM) nsdbhfb ghdfg",
                  style: TextStyle(fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: textPadding, right: textPadding, top: 5, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: ratingList.asMap().entries.map((e) {
                    if(e.value == 1)
                      return Icon(Icons.star, size: 10,);
                    else if (e.value == 0.5)
                      return  Icon(Icons.star_half, size: 10,);
                    else
                      return  Icon(Icons.star_outline_sharp, size: 10,);
                  }).toList(),
                )
              )
            ],
          );
        },
      ),
    );
    ;
  }
}
