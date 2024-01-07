import 'package:flutter/material.dart';
import 'package:threadcarfts/components/button/pagination_button.dart';

class PaginationNumber extends StatefulWidget {
  const PaginationNumber({super.key});

  @override
  State<PaginationNumber> createState() => _PaginationNumberState();
}

class _PaginationNumberState extends State<PaginationNumber> {
  List<Map> numberList = [
    {
      'label': 0,
      'string': "1",
      'isSelected': true,
    },
    {
      'label': 1,
      'string': "2",
      'isSelected': false,
    },
    {
      'label': 2,
      'string': "3",
      'isSelected': false,
    },
    {
      'label': 3,
      'string': "4",
      'isSelected': false,
    },
    {
      'label': 4,
      'string': "5",
      'isSelected': false,
    },
    {
      'label': 5,
      'string': "6",
      'isSelected': false,
    },
    {
      'label': 6,
      'string': "7",
      'isSelected': false,
    },
    {
      'label': 7,
      'string': "8",
      'isSelected': false,
    },
    {
      'label': 8,
      'string': "9",
      'isSelected': false,
    }
  ];

  void updateSelectedNumberPosition(int button) {
    setState(() {
      for (var element in numberList) {
        element['isSelected'] = false;
      }
      numberList[button]['isSelected'] = true;
    });
  }

  void resetSelectedButton() {
    for (var element in numberList) {
      element['isSelected'] = false;
    }
  }

  void incrementNumbers() {
    setState(() {
      resetSelectedButton();
      for (var element in numberList) {
        int num = int.parse(element['string']);
        num = num + 1;
        element['string'] = num.toString();
      }
    });
  }

  void decrementNumbers() {
    setState(() {
      resetSelectedButton();
      for (var element in numberList) {
        int num = int.parse(element['string']);
        num = num - 1;
        element['string'] = num.toString();
      }
    });
  }

  int fastNumber = 9;
  void fastForward() {
    setState(() {
      resetSelectedButton();
      for (var element in numberList) {
        int num = int.parse(element['string']);
        num = num + fastNumber;
        element['string'] = num.toString();
      }
    });
  }
  void fastRewind() {
    setState(() {
      resetSelectedButton();
      for (var element in numberList) {
        int num = int.parse(element['string']);
        num = num - fastNumber;
        element['string'] = num.toString();
      }
    });
  }

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
            IconButton(icon: const Icon(Icons.fast_rewind_sharp), onPressed: fastRewind),
            IconButton(icon: const Icon(Icons.arrow_left_sharp), onPressed: decrementNumbers),
            const Center( child: Text("."),),
            const Center( child: Text("."),),
            const Center( child: Text("."),),
            const SizedBox(
              width: 10,
            ),
            PaginationButton(
              buttonText: numberList[0]['string'],
              isSelected: numberList[0]['isSelected'],
              label: numberList[0]['label'],
              callback: updateSelectedNumberPosition,
            ),
            PaginationButton(
              buttonText: numberList[1]['string'],
              isSelected: numberList[1]['isSelected'],
              label: numberList[1]['label'],
              callback: updateSelectedNumberPosition,
            ),
            PaginationButton(
              buttonText: numberList[2]['string'],
              isSelected: numberList[2]['isSelected'],
              label: numberList[2]['label'],
              callback: updateSelectedNumberPosition,
            ),
            PaginationButton(
              buttonText: numberList[3]['string'],
              isSelected: numberList[3]['isSelected'],
              label: numberList[3]['label'],
              callback: updateSelectedNumberPosition,
            ),
            PaginationButton(
              buttonText: numberList[4]['string'],
              isSelected: numberList[4]['isSelected'],
              label: numberList[4]['label'],
              callback: updateSelectedNumberPosition,
            ),
            PaginationButton(
              buttonText: numberList[5]['string'],
              isSelected: numberList[5]['isSelected'],
              label: numberList[5]['label'],
              callback: updateSelectedNumberPosition,
            ),
            PaginationButton(
              buttonText: numberList[6]['string'],
              isSelected: numberList[6]['isSelected'],
              label: numberList[6]['label'],
              callback: updateSelectedNumberPosition,
            ),
            PaginationButton(
              buttonText: numberList[7]['string'],
              isSelected: numberList[7]['isSelected'],
              label: numberList[7]['label'],
              callback: updateSelectedNumberPosition,
            ),
            PaginationButton(
              buttonText: numberList[8]['string'],
              isSelected: numberList[8]['isSelected'],
              label: numberList[8]['label'],
              callback: updateSelectedNumberPosition,
            ),
            Center(
              child: Text("."),
            ),
            const Center(
              child: Text("."),
            ),
            const Center(
              child: Text("."),
            ),
            Center(
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                  ),
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: const Center(
                    child: Text("20"),
                  )),
            ),
            IconButton(icon: const Icon(Icons.arrow_right_sharp), onPressed: incrementNumbers),
            IconButton(icon: const Icon(Icons.fast_forward_sharp), onPressed: fastForward)
          ],
        ),
      ),
    );
  }
}
