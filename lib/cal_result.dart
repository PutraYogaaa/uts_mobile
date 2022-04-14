import 'package:flutter/material.dart';
import 'dart:math';

// ignore: must_be_immutable
class CalResult extends StatelessWidget {
  // ignore: non_constant_identifier_names, use_key_in_widget_constructors
  const CalResult({required this.alas_segitiga, required this.tinggi_segitiga});
  final int tinggi_segitiga;
  final int alas_segitiga;

  @override
  Widget build(BuildContext context) {
    double hasil = (alas_segitiga * tinggi_segitiga) / 2.0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hasil'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Luas Segitiga adalah :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              hasil.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.green,
          child: const Text(
            'Kembali',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
