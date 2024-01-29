import 'package:flutter/material.dart';

class SinglechildscrollviewPage extends StatelessWidget {
  const SinglechildscrollviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            Container(
              color: Colors.green,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            Container(
              color: Colors.amber,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
