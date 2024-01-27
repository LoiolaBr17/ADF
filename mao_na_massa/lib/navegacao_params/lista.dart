import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao_params/detalhes.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     settings: const RouteSettings(
              //       name: 'detalhe',
              //       arguments: {
              //         'id': 10,
              //       }
              //     ),
              //     builder: (context) => const Detalhes(),
              //   ),
              // );

              Navigator.of(context).pushNamed('/detalhes', arguments: {'id': 19});
            },
            child: const Text('detalhes'),
          ),
        ],
      ),
    );
  }
}
