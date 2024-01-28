import 'package:flutter/material.dart';

class BotoesRotacaoTexto extends StatelessWidget {
  const BotoesRotacaoTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const RotatedBox(
            //   quarterTurns: -1,
            //   child: Text('MATEUS LOIOLA'),
            // ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  minimumSize: const Size(120, 60),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  padding: const EdgeInsets.all(10)),
              child: const Text('click'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.wifi_lock_outlined),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              child: const Text('Clique aqui'),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.warehouse_sharp),
              label: const Text('é um botão'),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: const Text('InkWeel'),
            ),
            GestureDetector(
              child: const Text('Gesture detector'),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
