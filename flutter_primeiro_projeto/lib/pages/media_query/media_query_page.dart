import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final midiaQuery = MediaQuery.of(context);

    final statusBar = midiaQuery.padding.top;
    final heightBody = midiaQuery.size.height - statusBar - kToolbarHeight;

    print('Largura: ${midiaQuery.size.width}');
    print('Altura   ${midiaQuery.size.height}');
    print('Orientação: ${midiaQuery.orientation}');
    print('Tamanho da barra de notificação: ${midiaQuery.padding.top}');
    print('Tamanho appBar default: $kToolbarHeight');

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,  
              width:  midiaQuery.size.width, 
              height: heightBody / 2,
            ),
            Container(
              color: Colors.blue,  
              width:  midiaQuery.size.width, 
              height: heightBody / 2,
            ),
          ],
        ),
      ),
    );
  }
}
