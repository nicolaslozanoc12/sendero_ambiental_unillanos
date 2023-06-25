import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'models.dart';


class SenderoDatabase {
  Future<Database> openDB() async{
    return openDatabase(join(await getDatabasesPath(), 'DataBaseSendero.db'));
  }
}
