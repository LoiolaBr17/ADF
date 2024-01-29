import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const snackbar = SnackBar(
                  content: Text('Usuário autenticado'),
                  backgroundColor: Colors.green,
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  snackbar,
                );
              },
              child: const Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                 var snackbar = SnackBar(
                  content: const Text('Usuário autenticado ?'),
                  backgroundColor: Colors.green,
                  action: SnackBarAction(label: 'Sim', onPressed: (){}),
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  snackbar,
                );
              },
              child: const Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
