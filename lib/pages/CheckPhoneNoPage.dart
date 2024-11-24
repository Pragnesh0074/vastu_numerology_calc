import 'package:flutter/material.dart';
import 'package:vastu_numerology_calc/Utils/Appbar.dart';
import 'package:vastu_numerology_calc/Utils/CalFuncs.dart';

class CheckPhoneNoPage extends StatefulWidget {
  const CheckPhoneNoPage({super.key});

  @override
  State<CheckPhoneNoPage> createState() => _CheckPhoneNoPageState();
}

class _CheckPhoneNoPageState extends State<CheckPhoneNoPage> {
  TextEditingController mnC = TextEditingController();
  List<String> pairs = [];

  void calValues() {
    String phoneNumber = mnC.text.toString();
    for (int i = 0; i < phoneNumber.length - 1; i++) {
      pairs.add(phoneNumber.substring(i, i + 2));
    }
  }

  String getPairValue(int index) {
    return pairs[index];
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
            children: [
              TextField(
                controller: mnC,
                decoration: const InputDecoration(
                  labelText: 'Enter Phone Number :',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      calValues();
                    });
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
              SizedBox(
                height: 900,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: pairs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Text(
                          "Combination : ${getPairValue(index)}",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          CalFuncs.getPhoneData(pairs[index]),
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
