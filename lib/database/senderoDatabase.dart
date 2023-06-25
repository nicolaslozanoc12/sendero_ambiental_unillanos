import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'models.dart';

class SenderoDatabase {
  static void initialize() {
    WidgetsFlutterBinding.ensureInitialized();
  }

  Future<Database> openDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'DataBaseSendero.db');
    return openDatabase();
  }

  Future<List<Estacion>> estaciones() async {
    // Get a reference to the database.
    final db = await openDatabase();

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('Estacion');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Estacion(
        numero_est: maps[i]['numero_est'],
        nombre_est: maps[i]['nombre_est'],
        descrip_est: maps[i]['descrip_est'],
        ubicacion: maps[i]['ubicacion'],
      );
    });
  }
}
