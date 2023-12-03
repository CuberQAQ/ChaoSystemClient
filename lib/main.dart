import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Chaos System Cilent';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: const SeatTable()),
    );
  }
}

class SeatTable extends StatelessWidget {
  const SeatTable({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 6,
      padding: const EdgeInsets.all(15.0),
      children: List.generate(40, (index) {
        return SizedBox(
          height: 40,
          width: 22,
            child: Container(
                decoration: const BoxDecoration(color: Colors.black26),
                child: const Center(
                  child: Text("座位"),
                )));
      }),
    );
  }
}
