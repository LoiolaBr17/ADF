import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            onSelected: (PopupMenuPages value) {
              switch(value){
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows & Columns'),
                ),
              ];
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
