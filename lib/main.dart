import 'package:f_dos/db/_db.dart';
import 'package:f_dos/screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(title: "FDo",home: Home(),debugShowCheckedModeBanner: false,));
}
