import 'package:flutter/material.dart';

enum PopupMenuPages {
  Container,
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
                case PopupMenuPages.Container:
                  Navigator.of(context).pushNamed('/container');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.Container,
                  child: Text('Container'),
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
