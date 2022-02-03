import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitted Box Demo',
      theme: ThemeData( primarySwatch: Colors.blue,
      ),
      home: const FittedBoxExpScreen(),
    );
  }
}

class FittedBoxExpScreen extends StatefulWidget {
  const FittedBoxExpScreen({Key? key}) : super(key: key);

  @override
  _FittedBoxExpScreenState createState() => _FittedBoxExpScreenState();
}

class _FittedBoxExpScreenState extends State<FittedBoxExpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fitted Box Widget Exp"),),
        body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 150,
                  color: Colors.red,
                  padding: const EdgeInsets.all(10.0),
                  child: const Text("FITTED BOX WIDGET",
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                const SizedBox(height: 25,),
                Container(
                  width: 300,
                  height: 150,
                  color: Colors.red,
                  padding: const EdgeInsets.all(10.0),
                  child:  const FittedBox(
                    child: Text("FITTED BOX WIDGET",
                      style: TextStyle(
                        fontSize: 100,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),
    ),
    );
  }
}

