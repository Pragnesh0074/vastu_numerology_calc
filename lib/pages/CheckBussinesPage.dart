import 'package:flutter/material.dart';
import 'package:vastu_numerology_calc/Utils/Appbar.dart';
import 'package:vastu_numerology_calc/Utils/CalFuncs.dart';

class CheckBussinesPage extends StatefulWidget {
  const CheckBussinesPage({super.key});

  @override
  State<CheckBussinesPage> createState() => _CheckBussinesPageState();
}

class _CheckBussinesPageState extends State<CheckBussinesPage> {
  DateTime selectedDate = DateTime.now();
  Color bvColor = Colors.blueAccent;
  Color pvColor = Colors.blueAccent;
  Color blkColor = Colors.blueAccent;
  Color plkColor = Colors.blueAccent;
  int bnTotal = 0;
  int pnTotal = 0;
  int bnSubTotal = 0;
  int pnSubTotal = 0;
  int dayTotal = 0;
  int monthTotal = 0;
  int yearTotal = 0;
  int bhagyank = 0;
  String bVadicResult = "";
  String pVadicResult = "";
  String bLalkitabResult = "";
  String pLalkitabResult = "";
  TextEditingController bnC = TextEditingController();
  TextEditingController pnc = TextEditingController();

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
    bnTotal = CalFuncs.sumOfText(bnC.text.trim().toString());
    pnTotal = CalFuncs.sumOfText(pnc.text.trim().toString());
    bnSubTotal = CalFuncs.sumOfDigits(CalFuncs.sumOfDigits(bnTotal));
    pnSubTotal = CalFuncs.sumOfDigits(CalFuncs.sumOfDigits(pnTotal));
    bhagyank = CalFuncs.sumOfDigits(CalFuncs.sumOfDigits(selectedDate.day) +
        CalFuncs.sumOfDigits(selectedDate.month) +
        CalFuncs.sumOfDigits(selectedDate.year));
    setState(() {
      bVadicResult =
          CalFuncs.getVadicData(bhagyank.toString(), bnSubTotal.toString());
      if (bVadicResult == 'Friend') bvColor = Colors.greenAccent;
      if (bVadicResult == 'Neutral') bvColor = Colors.yellowAccent;
      if (bVadicResult == 'Enemy') bvColor = Colors.redAccent;
      pVadicResult =
          CalFuncs.getVadicData(bhagyank.toString(), pnSubTotal.toString());
      if (pVadicResult == 'Friend') pvColor = Colors.greenAccent;
      if (pVadicResult == 'Neutral') pvColor = Colors.yellowAccent;
      if (pVadicResult == 'Enemy') pvColor = Colors.redAccent;
      bLalkitabResult =
          CalFuncs.getLalKitabData(bhagyank.toString(), bnSubTotal.toString());
      if (bVadicResult == 'Friend') blkColor = Colors.greenAccent;
      if (bVadicResult == 'Neutral') blkColor = Colors.yellowAccent;
      if (bVadicResult == 'Enemy') blkColor = Colors.redAccent;
      pLalkitabResult =
          CalFuncs.getLalKitabData(bhagyank.toString(), pnSubTotal.toString());
      if (pVadicResult == 'Friend') plkColor = Colors.greenAccent;
      if (pVadicResult == 'Neutral') plkColor = Colors.yellowAccent;
      if (pVadicResult == 'Enemy') plkColor = Colors.redAccent;
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
                controller: bnC,
                decoration: const InputDecoration(
                  labelText: 'Enter Bussines Name :',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: pnc,
                decoration: const InputDecoration(
                  labelText: 'Enter Partner Name :',
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
              bVadicResult != ""
                  ? Column(
                      children: [
                        const Text(
                          ": Result As Per Vadic Numerology :",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          ": Bussiness Name :",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: Container(
                            decoration: BoxDecoration(
                                color: bvColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              bVadicResult,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 25),
                            )),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          ": Partner Name :",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: Container(
                            decoration: BoxDecoration(
                                color: pvColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              pVadicResult,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 25),
                            )),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          ": Result As Per Lalkitab Numerology :",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          ": Bussiness Name :",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: Container(
                            decoration: BoxDecoration(
                                color: blkColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              bLalkitabResult,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 25),
                            )),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          ": Partner Name :",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: Container(
                            decoration: BoxDecoration(
                                color: plkColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                                child: Text(
                              pLalkitabResult,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 25),
                            )),
                          ),
                        )
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
