import 'package:sqflite_common/sqflite.dart';

class DbHelper{
  static Future<Database> getConnection() async{
    final dbPath = await getDatabasesPath();
    const dbName = 'la_barbearia_maxweel_afternoon.db';
    final path = dbPath + dbName;
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, _) async{
        await db.execute(
          'CREATE TABLE barber (name VARCHAR(20) NOT NULL, location VARCHAR(50)) NOT NULL, chairnumber CHAR(11),waitingtime CHAR(5) NOT NULL, price DOUBLE soonBarber char(10));');
      },
    );
  }
}