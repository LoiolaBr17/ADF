import 'package:flutter/material.dart';
import 'package:flutter_sqlite_example/database/database_sqlite.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  void _database() async {
    final database = await DatabaseSqLite().openConnection();

    database.insert('teste', {'nome': 'Mateus loiola'});
    database.delete(
      'teste',
      where: 'nome = ?',
      whereArgs: ['Mateus loiola'],
    );
    database.update('teste', {'nome': 'ADF'}, where: 'nome = ?', whereArgs: ['Mateus loiola']);

    var result = database.query('teste');

    database.rawInsert('insert into teste values(null, ?)', ['Mateus']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
