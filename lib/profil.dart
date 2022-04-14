import 'package:flutter/material.dart';

class PictApp extends StatelessWidget {
  const PictApp({Key? key}) : super(key: key);

  @override
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names, avoid_renaming_method_parameters
  Widget build(BuildContext) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
                image: const DecorationImage(
                  image: AssetImage('images/yogaa.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.only(bottom: 15),
            ),
            const Text(
              "I Nyoman Putra Yoga",
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
            ),
            const Text(
              "1915101046",
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
            ),
            const Text(
              "",
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
            ),
            const IconApp1(),
            const IconApp()
            //onst LayoutApp()
          ],
        ),
      ),
    );
  }
}

class IconApp1 extends StatelessWidget {
  const IconApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          child: Column(
            children: const [
              Icon(
                Icons.room,
                color: Colors.green,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              SizedBox(
                width: 70,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(child: Text('Kaimana'))),
              )
            ],
          ),
          margin: const EdgeInsets.only(right: 50, bottom: 20),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          child: Column(
            children: const [
              Icon(
                Icons.account_circle_rounded,
                color: Colors.green,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              SizedBox(
                width: 70,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(child: Text('@Putra'))),
              )
            ],
          ),
          margin: const EdgeInsets.only(bottom: 20),
        ),
      ],
    );
  }
}

class IconApp extends StatelessWidget {
  const IconApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          child: Column(
            children: const [
              Icon(
                Icons.audiotrack,
                color: Colors.green,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              SizedBox(
                width: 70,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(child: Text('Pop'))),
              )
            ],
          ),
          margin: const EdgeInsets.only(right: 50, bottom: 50),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          child: Column(
            children: const [
              Icon(
                Icons.sports_soccer,
                color: Colors.green,
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              SizedBox(
                width: 70,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(child: Text('setting'))),
              )
            ],
          ),
          margin: const EdgeInsets.only(bottom: 50),
        ),
      ],
    );
  }
}
