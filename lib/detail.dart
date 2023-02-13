import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details of COVID-19"),
        leading: Container(),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade700,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey.shade700,
                ),
                height: 80,
                width: 300,
                child: Text(
                  "${data['loc']}",
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              height: 50,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey.shade700,
                ),
                height: 50,
                width: double.infinity,
                child: Text(
                  "ConfirmedCasesIndian : ${data['confirmedCasesIndian']}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.start,
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey.shade700,
                ),
                height: 50,
                width: double.infinity,
                child: Text(
                  "ConfirmedCasesForeign : ${data['confirmedCasesForeign']}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.start,
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey.shade700,
                ),
                height: 50,
                width: double.infinity,
                child: Text(
                  "Discharged : ${data['discharged']}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.start,
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey.shade700,
                ),
                height: 50,
                width: double.infinity,
                child: Text(
                  "Deaths : ${data['deaths']}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.start,
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey.shade700,
                ),
                height: 50,
                width: double.infinity,
                child: Text(
                  "TotalConfirmed : ${data['totalConfirmed']}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.start,
                )),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey.shade200,
    );
  }
}
