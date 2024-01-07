import 'package:flutter/material.dart';

class ProductDetailsBottomSheet extends StatefulWidget {
  const ProductDetailsBottomSheet({super.key});

  @override
  State<ProductDetailsBottomSheet> createState() =>
      _ProductDetailsBottomSheetState();
}

class _ProductDetailsBottomSheetState extends State<ProductDetailsBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Center(
          child: TextButton(
            child: Text('SHOW BOTTOM SHEET'),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  // Using Wrap makes the bottom sheet height the height of the content.
                  // Otherwise, the height will be half the height of the screen.
                  return Wrap(
                    children: [
                      ListTile(
                        leading: Icon(Icons.share),
                        title: Text('Share'),
                      ),
                      ListTile(
                        leading: Icon(Icons.link),
                        title: Text('Get link'),
                      ),
                      ListTile(
                        leading: Icon(Icons.edit),
                        title: Text('Edit name'),
                      ),
                      ListTile(
                        leading: Icon(Icons.delete),
                        title: Text('Delete collection'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
