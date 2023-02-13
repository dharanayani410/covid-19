import 'package:covid/detail.dart';
import 'package:covid/helpers/api_helper.dart';
import 'package:flutter/material.dart';

import 'modals/custom.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MyApp(),
      'detail': (context) => const Detail()
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("COVID-19"),
            backgroundColor: Colors.blueGrey.shade700,
            centerTitle: true,
          ),
          body: FutureBuilder(
            future: APIHelper.apiHelper.fetchDetail(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("ERROR : ${snapshot.error}"),
                );
              } else if (snapshot.hasData) {
                Covid? data = snapshot.data;
                return (data != null)
                    ? Container(
                        color: Colors.blueGrey.shade200,
                        child: ListView(
                          padding: const EdgeInsets.all(10),
                          children: data.loc
                              .map((e) => Card(
                                    margin: const EdgeInsets.all(10),
                                    elevation: 3,
                                    child: ListTile(
                                      tileColor: Colors.blueGrey.shade700,
                                      textColor: Colors.white,
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed('detail', arguments: e);
                                      },
                                      title: Text("${e['loc']}"),
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    : const Center(
                        child: Text("NO DATA...."),
                      );
              }
              return const Center(child: CircularProgressIndicator());
            },
          )),
    );
  }
}
