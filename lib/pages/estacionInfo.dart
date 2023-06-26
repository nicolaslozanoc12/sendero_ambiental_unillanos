import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sendero_ambiental_unillanos/database/models.dart';
import 'package:sendero_ambiental_unillanos/database/senderoDatabase.dart';
void main() => runApp(EstacionInfo());
class EstacionInfo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Future<List<Estacion>> obtenerEstaciones() async {
      final senderoDatabase = SenderoDatabase();
      final db = await senderoDatabase.openDB();
      print("ESTOY ENTRANDO Y MI DB ES: $db ---");
      final List<Map<String, dynamic>> resultado = await db.query('Estacion');
      print("SALGO");
      return resultado.map((map) => Estacion.fromMap(map)).toList();
    }


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

