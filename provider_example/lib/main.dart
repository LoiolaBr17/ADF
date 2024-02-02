import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/provider_page.dart';
import 'package:provider_example/provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return UserModel(
          name: 'Mateus Loiola',
          imgAvatar: 'https://picsum.photos/200',
          birthDate: '03/04/1999',
        );
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        routes: {
          '/provider': (context) => const ProviderPage(),
        },
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/provider'),
                      child: const Text('Provider'),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Change Notifier')),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
