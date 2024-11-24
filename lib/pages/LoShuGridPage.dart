// ignore_for_file: unused_local_variable, file_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:vastu_numerology_calc/Utils/Appbar.dart';
import 'package:vastu_numerology_calc/Utils/CalFuncs.dart';
import 'package:vastu_numerology_calc/Utils/GridNumberValues.dart';

class LoShuGridPage extends StatefulWidget {
  const LoShuGridPage({super.key});

  @override
  State<LoShuGridPage> createState() => LoShuGridPageState();
}

class LoShuGridPageState extends State<LoShuGridPage> {
  DateTime selectedDate = DateTime.now();
  int dobSum = 0;
  int daySum = 0;
  String finalString = '';
  List<int> sortedNumbers = [];
  List<int> missingNumbers = [];
  bool gridSet = false;
  OverlayEntry? overlayEntry;

  List<List<dynamic>> loShuGrid = [
    [[], [], []],
    [[], [], []],
    [[], [], []],
  ];

  Map<dynamic, List> gridMap = {
    1: [2, 1],
    2: [0, 2],
    3: [1, 0],
    4: [0, 0],
    5: [1, 1],
    6: [2, 2],
    7: [1, 2],
    8: [2, 0],
    9: [0, 1],
  };

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void addNumbersToGrid(List<int> numberList, List<List<dynamic>> loShuGrid,
      Map<dynamic, List> gridMap) {
    for (int i = 0; i < numberList.length; i++) {
      int number = numberList[i];
      if (gridMap.containsKey(number)) {
        List? position = gridMap[number];
        int row = position?[0];
        int col = position?[1];
        loShuGrid[row][col].add(number);
      }
    }
  }

  List<int> findMissingNumbers(List<int> numbers) {
    Set<int> uniqueNumbers = Set.from(numbers);
    List<int> missingNumbers = [];
    for (int i = 1; i <= 9; i++) {
      if (!uniqueNumbers.contains(i)) {
        missingNumbers.add(i);
      }
    }
    return missingNumbers;
  }

  void drawGrid() {
    dobSum = CalFuncs.sumOfDigits(CalFuncs.sumOfDigits(selectedDate.day) +
        CalFuncs.sumOfDigits(selectedDate.month) +
        CalFuncs.sumOfDigits(selectedDate.year));
    daySum = CalFuncs.sumOfDigits(CalFuncs.sumOfDigits(selectedDate.day));
    finalString = selectedDate.day.toString() +
        selectedDate.month.toString() +
        selectedDate.year.toString() +
        dobSum.toString() +
        daySum.toString();
    finalString = finalString.split('').where((char) => char != '0').join();
    sortedNumbers = finalString.split('').map(int.parse).toList()..sort();
    addNumbersToGrid(sortedNumbers, loShuGrid, gridMap);
    missingNumbers = findMissingNumbers(sortedNumbers);
    setState(() {
      gridSet = true;
    });
  }

  Future<void> showPopup(int value) async {
    await Future.delayed(Duration.zero);
    overlayEntry = OverlayEntry(
      opaque: false,
      builder: (context) => Center(
        child: Container(
          height: 450,
          width: 300,
          decoration: BoxDecoration(
              color: GridNumberValues.getVadicBgColor(value),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  GridNumberValues.getVadicValue1(value).join('\n'),
                  style: TextStyle(
                      fontSize: 18,
                      color: GridNumberValues.getVadicTextColor(value),
                      decoration: TextDecoration.none),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  textAlign: TextAlign.center,
                  GridNumberValues.getVadicValue2(value).join('\n'),
                  style: TextStyle(
                      fontSize: 18,
                      color: GridNumberValues.getVadicTextColor(value),
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    Overlay.of(context).insert(overlayEntry!);
  }

  Future<void> hidePopup() async {
    if (overlayEntry != null) {
      overlayEntry!.remove();
      overlayEntry = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Selected DOB: ${selectedDate.toString()}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => selectDate(context),
                child: const Text('Select Date'),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {
                    drawGrid();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(25)),
                    child: const Center(
                        child: Text(
                      'Submit',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              gridSet
                  ? Column(
                      children: [
                        SizedBox(
                            height: 350,
                            width: double.maxFinite,
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0,
                              ),
                              itemCount: 9,
                              itemBuilder: (BuildContext context, int index) {
                                int row = index ~/ 3;
                                int col = index % 3;
                                dynamic value = loShuGrid[row][col];
                                return GestureDetector(
                                  onLongPressStart: (_) => showPopup(
                                      value.isNotEmpty ? value[0] : 0),
                                  onLongPressEnd: (_) => hidePopup(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: Center(
                                      child: Text(
                                        value.isNotEmpty ? value.join('') : 'X',
                                        style: const TextStyle(fontSize: 20.0),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            )),
                        Text(
                          'Present numbers : $sortedNumbers',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Present numbers : $missingNumbers',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
