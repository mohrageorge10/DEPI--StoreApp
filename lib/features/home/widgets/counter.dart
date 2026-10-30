import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (count > 0) {
                  count--;
                }
              });
            },
            child: Icon(Icons.remove, size: 18),
          ),
          Text("$count", style: TextStyle(fontSize: 18)),
          GestureDetector(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: Icon(Icons.add, size: 18),
          ),
        ],
      ),
    );
  }
}
