import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/1200'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.white54,
          ),
          const Positioned(
            left: 10,
            right: 10,
            bottom: 48,
            child: Card(
              elevation: 8,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'New York',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'A cidade de Nova York nunca dorme, sendo uma das capitais mais movimentadas de todos os EUA.',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
