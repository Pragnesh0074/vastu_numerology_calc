import 'package:flutter/material.dart';
import 'package:vastu_numerology_calc/Utils/Appbar.dart';
import 'package:vastu_numerology_calc/Utils/CalFuncs.dart';

class CheckNamePage extends StatefulWidget {
  const CheckNamePage({super.key});

  @override
  State<CheckNamePage> createState() => _CheckNamePageState();
}

class _CheckNamePageState extends State<CheckNamePage> {
  DateTime selectedDate = DateTime.now();
  int finalSubTotal = 0;
  int bhagyank = 0;
  int fnTotal = 0;
  int mnTotal = 0;
  int lnTotal = 0;
  int fnSubTotal = 0;
  int mnSubTotal = 0;
  int lnSubTotal = 0;
  int dayTotal = 0;
  int monthTotal = 0;
  int yearTotal = 0;
  String vadicResult = "";
  String lalKitabResult = "";
  Color vadicColor = Colors.blueAccent;
  Color lalKitabColor = Colors.blueAccent;
  Color color = Colors.blueAccent;
  TextEditingController fnController = TextEditingController();
  TextEditingController mnController = TextEditingController();
  TextEditingController lnController = TextEditingController();

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

  void calValues() {
    fnTotal = CalFuncs.sumOfText(fnController.text.trim().toString());
    mnTotal = CalFuncs.sumOfText(mnController.text.trim().toString());
    lnTotal = CalFuncs.sumOfText(lnController.text.trim().toString());
    fnSubTotal = CalFuncs.sumOfDigits(CalFuncs.sumOfDigits(fnTotal));
    mnSubTotal = CalFuncs.sumOfDigits(CalFuncs.sumOfDigits(mnTotal));
    lnSubTotal = CalFuncs.sumOfDigits(CalFuncs.sumOfDigits(lnTotal));
    finalSubTotal =
        CalFuncs.sumOfDigits((fnSubTotal + mnSubTotal + lnSubTotal));
    bhagyank = CalFuncs.sumOfDigits(CalFuncs.sumOfDigits(selectedDate.day) +
        CalFuncs.sumOfDigits(selectedDate.month) +
        CalFuncs.sumOfDigits(selectedDate.year));
    setState(() {
      vadicResult =
          CalFuncs.getVadicData(bhagyank.toString(), finalSubTotal.toString());
      if (vadicResult == 'Friend') vadicColor = Colors.greenAccent;
      if (vadicResult == 'Neutral') vadicColor = Colors.yellowAccent;
      if (vadicResult == 'Enemy') vadicColor = Colors.redAccent;
      lalKitabResult = CalFuncs.getLalKitabData(
          bhagyank.toString(), finalSubTotal.toString());
      if (vadicResult == 'Friend') lalKitabColor = Colors.greenAccent;
      if (vadicResult == 'Neutral') lalKitabColor = Colors.yellowAccent;
      if (vadicResult == 'Enemy') lalKitabColor = Colors.redAccent;
    });
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: fnController,
                decoration: const InputDecoration(
                  labelText: 'Enter First Name :',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: mnController,
                decoration: const InputDecoration(
                  labelText: 'Enter Middle Name :',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: lnController,
                decoration: const InputDecoration(
                  labelText: 'Enter Last Name :',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 30,
              ),
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
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {
                    calValues();
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
              vadicResult != ""
                  ? Column(
                      children: [
                        const Text(
                          ": Result As Per Vadic Numerology :",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: Container(
                            decoration: BoxDecoration(
                                color: vadicColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              vadicResult,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 25),
                            )),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              const SizedBox(
                height: 30,
              ),
              lalKitabResult != ""
                  ? Column(
                      children: [
                        const Text(
                          ": Result As Per Lalkitab Numerology :",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: Container(
                            decoration: BoxDecoration(
                                color: lalKitabColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              lalKitabResult,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 25),
                            )),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
