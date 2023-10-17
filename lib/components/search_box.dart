import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(7),
      child: SearchBar(
        backgroundColor: MaterialStateProperty.all(
            Colors.black12
        ),
        constraints: const BoxConstraints(
          minWidth: 0,
          maxWidth: 400,
        ),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all( const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        )),
        side: MaterialStateProperty
            .all(const BorderSide(color: Colors.black45)),
        hintText: "Enter you name...",
        hintStyle: MaterialStateProperty.all(const TextStyle(color: Colors.black54)),
        // leading: const Icon(Icons.search),
      ),
    );
  }
}
