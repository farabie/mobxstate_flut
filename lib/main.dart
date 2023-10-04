import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "0",
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                heroTag: 'Decrement',
                onPressed: () {},
                child: Icon(Icons.arrow_downward),
              ),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                heroTag: 'Increment',
                onPressed: () {},
                child: Icon(
                  Icons.arrow_upward,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
