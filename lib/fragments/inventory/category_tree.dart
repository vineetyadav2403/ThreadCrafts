import 'package:flutter/material.dart';

class CategoryTree extends StatefulWidget {
  const CategoryTree({super.key});

  @override
  State<CategoryTree> createState() => _CategoryTreeState();
}

class _CategoryTreeState extends State<CategoryTree> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        padding: const EdgeInsets.all(5),
        color: Colors.white70,
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Category id or name",
                      hintStyle: TextStyle(fontWeight: FontWeight.normal),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, size: 18,),),),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.chevron_right_sharp),
                      label: Text("Men"),
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    elevation: 0,
                  ),)
                ],)
              ],
            )
          ],
        ),
      );
    });
  }
}
