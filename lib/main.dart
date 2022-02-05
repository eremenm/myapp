import 'package:flutter/material.dart';

void main() => runApp(const CounterApp());

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'IndieFlower'),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("App for learning"),
          centerTitle: true,
        ),
        body: const Center(
          child: Counter(),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  late int _count;

  @override
  void initState() {
    _count = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tap "-" to decrement',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Container(
              //color: Colors.grey,
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.indeterminate_check_box_outlined),
                    color: Colors.black54,
                    onPressed: () {
                      setState(() {
                        _count -= 1;
                      });
                    },
                  ),
                  Text(
                    "$_count",
                    style: const TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_box_outlined),
                    color: Colors.black54,
                    onPressed: () {
                      setState(() {
                        _count += 1;
                      });
                    },
                  ),
                ],
              ),
            ),
            const Text(
              'Tap "+" to increment',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
