import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  Widget button(String text) {
    return SizedBox(
      width: 75,
      height: 75,
      child: ElevatedButton(
        onPressed: () {
          buttonPressed(text);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: text == "+" ?Colors.green : text == "-"
              ? Colors.red
              : text == "Reset"
              ? Colors.blueAccent
              : Colors.white,
          foregroundColor: text == "+" || text == "-" || text == "Reset"
              ? Colors.white
              : Colors.black,
          textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          shape: CircleBorder(),
           
          padding: EdgeInsets.zero,
        ),
        child: Text(text),
      ),
    );
  }

  void buttonPressed(String value) {
    setState(() {
      if (value == "+") {
        counter++;
      } else if (value == "-") {
        counter--;
      } else if (value == "Reset") {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              Text(
                "Counter App",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 40),

              // Counter display
              Text(
                "$counter",
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 40),

              // + and - buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [button("-"), SizedBox(width: 20), button("+")],
              ),

              SizedBox(height: 20),

              // Reset button
              SizedBox(
                width: 170,
                height: 55,
                child: ElevatedButton(
                  onPressed: () => buttonPressed("Reset"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Text("Reset"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
