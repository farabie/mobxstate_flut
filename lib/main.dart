import 'package:flutter/material.dart';
import 'package:mobxstate_flut/mobxstate/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(MyApp());
}

final CounterMobx counter = CounterMobx();

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx State Demo'),
      ),
      body: Center(
        child: Observer(
          builder: (context) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counter.value.toString(),
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
                    onPressed: () {
                      counter.decrement();
                    },
                    child: Icon(Icons.arrow_downward),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    heroTag: 'Increment',
                    onPressed: () {
                      counter.increment();
                    },
                    child: Icon(
                      Icons.arrow_upward,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
