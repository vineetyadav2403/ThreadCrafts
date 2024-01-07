import 'dart:io';

import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:threadcarfts/color/color_select.dart';
import 'package:threadcarfts/components/bottom_sheet/product_details.dart';
import 'package:threadcarfts/components/horizontal_divider.dart';
import 'package:threadcarfts/components/my_card.dart';
import 'package:threadcarfts/components/number_picker/horizontal_number_picker.dart';
import 'package:threadcarfts/components/vertical_split.dart';
import 'package:threadcarfts/fragments/inventory/category_tree.dart';
import 'package:threadcarfts/fragments/inventory/path_header.dart';
import 'package:threadcarfts/fragments/product_details.dart';
import 'package:threadcarfts/fragments/product_details_price.dart';
import 'package:threadcarfts/responsive/dimensions.dart';

import '../../components/Carousel/full_screen_slider.dart';
import '../../components/build_barcode.dart';
import '../../components/dropdown/dropdown.dart';
import '../../components/menu/popup_menu.dart';
import '../products/product_details_page.dart';
import '../table/product_table.dart';


class InventoryFragment extends StatefulWidget {
  const InventoryFragment({super.key});

  @override
  State<InventoryFragment> createState() => _InventoryFragmentState();
}

class _InventoryFragmentState extends State<InventoryFragment> {

  @override
  Widget build(BuildContext context) {
    return SplitView(
      leftWidget: const CategoryTree(),
      rightWidget: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: Container(
            color: Colors.black12,
            child: Column(
              children: [
                Container(
                  color: Colors.white54,
                  height: 50,
                  child: PathHeader(),
                ),
                Container(
                  color: Colors.white54,
                  child: Column(
                    children: [
                      Container(
                        padding:const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 40),
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Text(
                              "Computer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: InkWell(
                                onTap: (){},
                                child: Container(
                                  width: 40, height: 40,
                                  child: Icon(Icons.more_horiz_rounded),
                                ),
                              ),
                            ),
                            const VerticalDivider(width: 10),
                            SizedBox(
                              height: 40,
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorSelect.appColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                onPressed: () {},
                                icon: const Icon(Icons.edit),
                                label: const Text("EDIT"),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ProductDetailsPrice(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const ProductDetailsPage()),
                                      );
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      width: constraints.maxWidth / 2,
                                      height: constraints.maxWidth / 2,
                                      child: const MyCard(widget: FullScreenSliderWithIndicator(),),
                                    ),
                                  ),
                                  Expanded(child: Container(
                                    margin: const EdgeInsets.only(left: 20, top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        MyCard(widget: Container(
                                          padding: EdgeInsets.all(20),
                                          width: constraints.maxWidth / 2,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Barcode", style: TextStyle(fontWeight: FontWeight.bold),),
                                              //Text("You can use QR codes or barcodes to track the inventory of your products or assets.")
                                              SizedBox(height: 10,),
                                              BarcodeWidget(
                                                barcode: Barcode.code39(), // Barcode type and settings
                                                data: '1234567', // Content
                                                width: 300,
                                                height: 50,
                                              ),
                                              SizedBox(height: 10,),
                                              Text("QR Code", style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 10,),
                                              BarcodeWidget(
                                                barcode: Barcode.qrCode(), // Barcode type and settings
                                                data: '1234567', // Content
                                                width: 100,
                                                height: 100,
                                              ),
                                            ],
                                          ) ,
                                        ),),
                                        MyCard(widget: Container(
                                          width: constraints.maxWidth / 2,
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Custom Fields", style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 10,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  ElevatedButton.icon(
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: ColorSelect.appColor,
                                                      foregroundColor: Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(5.0),
                                                      ),
                                                    ),
                                                    onPressed: () {},
                                                    icon: const Icon(Icons.add, size: 12,),
                                                    label: const Text("ADD CUSTOM FIELD", style: TextStyle(fontSize: 12),),
                                                  ),
                                                  ElevatedButton.icon(
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: ColorSelect.appColor,
                                                      foregroundColor: Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(5.0),
                                                      ),
                                                    ),
                                                    onPressed: () {},
                                                    icon: const Icon(Icons.format_list_bulleted,size: 12,),
                                                    label: const Text("Manage Custom Fields", style: TextStyle(fontSize: 12),),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ))
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                              Container(
                                width: constraints.maxWidth,
                                margin: EdgeInsets.only(top: 10),
                                child: MyCard(widget: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ProductDetailsTable(),
                                      Row(
                                        children: [
                                         // HorizontalNumberPicker(),
                                          //Dropdown(list: ['1','2','3','4'],),
                                          //PopupMenu(),
                                          Expanded(child: Container()),
                                          Text("1 - 10 of 20"),
                                          SizedBox(width: 20,),
                                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_left)),
                                          SizedBox(width: 20,),
                                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right)),
                                          SizedBox(width: 20,)
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                              )
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },),
      ratio: 0.2,
    );
  }
}
