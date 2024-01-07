import 'package:flutter/material.dart';

class ProductDetailsTable extends StatefulWidget {
  const ProductDetailsTable({super.key});

  @override
  State<ProductDetailsTable> createState() => _ProductDetailsTableState();
}

class _ProductDetailsTableState extends State<ProductDetailsTable> {
  List<String> tableColumName = ['Name', 'Size', 'Color','Quantity', 'Price','Total value', 'Barcode', 'Tags'];
  static const int numItems = 10;
  List<List<String>> tableData = [
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt'],
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt'],
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt'],
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt'],
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt'],
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt'],
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt'],
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt'],
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt'],
    ['Pink Shirt', 'M', 'Pink', '10', '10', '100','','Shirt']];

  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(columns: tableColumName.asMap().entries.map((e) {
        return DataColumn(label: Text(e.value));
      }).toList(), rows: tableData.asMap().entries.map((e) {
        return DataRow(
          color: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                // All rows will have the same selected color.
                if (states.contains(MaterialState.selected)) {
                  return Theme.of(context).colorScheme.primary.withOpacity(0.08);
                }
                // Even rows will have a grey color.
                if (e.key.isEven) {
                  return Colors.grey.withOpacity(0.1);
                }
                return null; // Use default value for other states and odd rows.
              }),
          selected: selected[e.key],
          onSelectChanged: (bool? value) {
            setState(() {
              selected[e.key] = value!;
            });
          },
          cells: e.value.asMap().entries.map((cell) {
            return DataCell(Text(cell.value));
          }).toList(),
        );
      }).toList(),

      ),
    );
  }
}