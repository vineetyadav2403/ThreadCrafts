import 'package:flutter/material.dart';
import 'package:threadcarfts/components/button/pagination_button.dart';

class PaginationNumber extends StatefulWidget {
  const PaginationNumber({super.key});

  @override
  State<PaginationNumber> createState() => _PaginationNumberState();
}

class _PaginationNumberState extends State<PaginationNumber> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: 60,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0)),
        surfaceTintColor: Colors.white,
        child: Row(
          children: [
            const SizedBox(width: 25,),
            IconButton(icon: const Icon(Icons.fast_rewind_sharp), onPressed: (){}),
            IconButton(icon: const Icon(Icons.arrow_left_sharp), onPressed: (){}),
            const Center( child: Text("."),),
            const Center( child: Text("."),),
            const Center( child: Text("."),),
            PaginationButton(buttonText: 1 as String),
            const Center( child: Text("."),),
            const Center( child: Text("."),),
            const Center( child: Text("."),),
            Center(
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1
                    ),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(3.0)
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 30, right: 20),
                  child: const Center(child: Text("20"),)
              ),
            ),
            IconButton(icon: const Icon(Icons.arrow_right_sharp), onPressed: (){}),
            IconButton(icon: const Icon(Icons.fast_forward_sharp), onPressed: (){})
          ],
        ),
      ),
    );
  }
}
