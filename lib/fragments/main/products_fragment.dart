import 'package:flutter/material.dart';
import 'package:threadcarfts/components/paginations/pagination_number.dart';
import 'package:threadcarfts/responsive/dimensions.dart';

import '../../components/Carousel/full_screen_slider.dart';

class ProductFragments extends StatefulWidget {
  const ProductFragments({super.key});

  @override
  State<ProductFragments> createState() => _ProductFragmentsState();
}

class _ProductFragmentsState extends State<ProductFragments> {
  int gridSize = 12;
  double margin = 13;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width - tabBoxSize,
        child: Stack(
          children: [
            GridView.count(
              crossAxisCount: 4,
              children: List.generate(gridSize, (index) {
                return Card(
                  child: FullScreenSliderWithIndicator(),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                );
              }),
            ),
            Positioned(
                top: MediaQuery
                    .of(context)
                    .size
                    .height - 150,
                left: MediaQuery
                    .of(context)
                    .size
                    .width -
                    (MediaQuery
                        .of(context)
                        .size
                        .width / 2) -
                    175 -
                    tabBoxSize,
                child: const PaginationNumber()
            )
          ],
        ));
  }
}
