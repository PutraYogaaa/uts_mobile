import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'cal_result.dart';

class InputCal extends StatefulWidget {
  const InputCal({Key? key}) : super(key: key);

  @override
  _InputCalState createState() => _InputCalState();
}

class _InputCalState extends State<InputCal> {
  int alas = 0;
  int tinggi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // ignore: avoid_unnecessary_containers

            Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            alas = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                            suffix: Text('cm'), filled: true, hintText: 'Alas'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                            suffix: Text('cm'),
                            filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CalResult(
                            alas_segitiga: alas, tinggi_segitiga: tinggi)),
                  );
                },
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.green,
                child: const Text(
                  'HITUNG LUAS',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
