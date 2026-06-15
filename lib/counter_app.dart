import 'package:counter_app/count_controller.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

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
                context.watch<CountController>().count.count.toString(),
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 40),

              // + and - buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<CountController>().increment();
                      
                    },
                    child: Text("+"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CountController>().decrement();
                    },
                    child: Text("-"),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Reset button
              SizedBox(
                width: 170,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                     context.read<CountController>().reset();
                  },
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
