import 'package:flutter/material.dart';
import 'package:sendero_ambiental_unillanos/database/senderoDatabase.dart';
import 'package:sendero_ambiental_unillanos/database/models.dart';

void main() async {
  SenderoDatabase.initialize();
  final senderoDatabase = SenderoDatabase();
  final List<Estacion> estaciones = await senderoDatabase.estaciones();

  runApp(MyApp(estaciones: estaciones));
}

class MyApp extends StatelessWidget {
  final List<Estacion> estaciones;

  const MyApp({required this.estaciones});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Estaciones'),
        ),
        body: Center(
          child: Text("BODYYY"),
        ),
      ),
    );
  }
}