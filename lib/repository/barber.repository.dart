import 'package:la_barbearia/model/db_halper.dart';
import 'package:la_barbearia/model/Barber.dart';

class BarberRepository{
  static Future<int> insert(Barber barber) async{
    final db = await DbHelper.getConnection();
    return await db.insert('barber', barber.toMap());
  }

  static Future<List<Barber>> findAll() async{
    final db = await DbHelper.getConnection();
    final result = await db.query('tickets');
    return result.map((item) => Barber.fromMap(item)).toList();
    
  }
}