
import 'package:counter_app/count_controller.dart';
import 'package:counter_app/counter.dart';
import 'package:counter_app/counter_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ChangeNotifierProvider(create: (context) => CountController(),child: CounterApp(),)));
}
