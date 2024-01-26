import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'page 3'),
                    builder: (context) => const Page3(),
                  ),
                );
              },
              child: const Text('Page 3 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Page 3 via NAMED'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('POP'),
            ),
          ],
        ),
      ),
    );
  }
}
