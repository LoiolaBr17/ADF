import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/user_model.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    // .read vai retornar uma instancia sem ficar escutando alterações
    // var user = context.read<UserModel>();

    // extraindo uma informação específica
    var imageAvatar =
        context.select<UserModel, String>((userModel) => userModel.imgAvatar);

    // var user = context.watch<UserModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.imgAvatar),
                radius: 40,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,                
                children: [
                  Text(user.name),
                  const SizedBox(width: 4),
                  Text(user.birthDate),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
