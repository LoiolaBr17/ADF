import 'package:flutter/material.dart';
import 'package:mao_na_massa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {  
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Page4()));          
              },
              child: const Text('pushReplacement'),
            ),                       
          ],
        ),
      ),
    );
  }
}
