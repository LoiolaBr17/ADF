import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: 'parametro x');
              },
              child: const Text('Ir para detalhe'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                        name: '/detalhe',
                        arguments: 'Parametro pelo page route'),
                    builder: (_) => const DetalhePage(),
                  ),
                );
              },
              child: const Text('Parametro pelo page route'),
            ),
            TextButton(
              onPressed: () async {
                var message = await Navigator.of(context).pushNamed('/detalhe2');
              },
              child: const Text('Ir detalhes 2 e aguardar'),
            ),
          ],
        ),
      ),
    );
  }
}
