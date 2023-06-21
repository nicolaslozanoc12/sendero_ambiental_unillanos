import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class SenderoDatabase{
  static final  SenderoDatabase instancia = SenderoDatabase.init();

  static Database? _database;
  SenderoDatabase.init();

  final String nombreEstacion="Estacion";
  Future<Database> get database  async{
    if (_database != null ) return _database!;

    _database= await _initDB('sendero.db');
    return _database!;
  }
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, onCreate: _onCreateDB);
  }
  Future _onCreateDB(Database db, int version) async{
    await db.execute ('''CREATE  TABLE $nombreEstacion (
       numero_est INTEGER PRIMARY KEY,
       nombre_est String,
       descrip_est Text,
       ubicacion String
       )
       ''');
  }
  Future<void>  insert(Estacion estacion) async {
        final db=await instancia.database;
        await db.insert(nombreEstacion, estacion.toMap() )
      }

}
