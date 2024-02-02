import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSqLite {
  Future<Database> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, '/SQLITE_EXAMPLE');

    return await openDatabase(
      databaseFinalPath,
      version: 1,
      onConfigure: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
      // chamado somento no momento de criação do banco de dados
      // primeira vez que carrega o aplicativo
      onCreate: (Database db, version) {
        final batch = db.batch();

        batch.execute('''
          create table teste(
            id Integer primary key autoincrement,
            nome varchar(200)
          )
        ''');

        batch.execute('''
          create table produto(
            id Intager primary key autoincrement,
            nome varchar(200)
          )
        ''');

        batch.commit();
      },
      // será chamado sempre que ouver uma alteração no version (para mais)
      onUpgrade: (db, oldVersion, newVersion) {
        final batch = db.batch();

        if (oldVersion == 1) {
          batch.execute('''
            create table produto(
              id Intager primary key autoincrement,
              nome varchar(200)
            )
          ''');
        }
      },
      // será chamado sempre que ouver uma alteração no version (para menos)
      onDowngrade: (db, oldVersion, newVersion) {
        final batch = db.batch();

        if(oldVersion == 3) {
          batch.execute('''
            drop table categoria;
          ''');
        }

      },
    );
  }
}
