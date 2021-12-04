import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnections {
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_class_sqflite');
    var database =
        await openDatabase(path, version: 1, onCreate: _oncreatingDatabase);
    return database;
  }

  _oncreatingDatabase(Database database, int version) async {
    await database.execute(
        "CREATE TABLE categories(code , name TEXT,department TEXT, description TEXT )");
  }
}
