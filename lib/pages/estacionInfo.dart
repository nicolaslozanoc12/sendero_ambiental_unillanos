import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sendero_ambiental_unillanos/database/models.dart';
import 'package:sendero_ambiental_unillanos/database/senderoDatabase.dart';
import 'package:http/http.dart' as http;
void main() => runApp(EstacionInfo());
class EstacionInfo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Future<List<Estacion>> obtenerEstaciones() async {
      final senderoDatabase = SenderoDatabase();
      final db = await senderoDatabase.openDB();
      print("ESTOY ENTRANDO Y MI DB ES: $db ---");
      List<Map<String, dynamic>> resultado = await db.query('Estacion');
      for (Map<String, dynamic> row in resultado) {
        print(row);
      }
      print("SALGO");
      return resultado.map((map) => Estacion.fromMap(map)).toList();
    }
    Future<void> obtenerSaludo() async {
      final respuesta = await http.get(Uri.parse('https://somber-highfalutin-spirit.glitch.me/api/saludo'));
      if (respuesta.statusCode == 200) {
        final datos = jsonDecode(respuesta.body);
        print(datos['mensaje']);
      } else {
        print('Error en la solicitud');
      }
    }
    obtenerSaludo();


    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white70,
          child: FutureBuilder<List<Estacion>>(
                  future: obtenerEstaciones(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final List<Estacion> estaciones = snapshot.data!;
                      return ListView.builder(
                        itemCount: estaciones.length,
                        itemBuilder: (context, index) {
                          final estacion = estaciones[index];
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Text('Número: ${estacion.numero_est}\nNombre: ${estacion.nombre_est}'),
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text('Error al cargar las estaciones');
                    }
                    return CircularProgressIndicator();
                  },
                ),
        ),
      ),
    );
  }
}

