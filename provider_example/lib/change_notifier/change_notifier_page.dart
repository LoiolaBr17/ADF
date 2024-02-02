import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/change_notifier/provider_controller.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({super.key});

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();
    _getDados();
  }

  void _getDados() async {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 3));
      // ignore: use_build_context_synchronously
      context.read<ProviderController>().alterarDados();
    });
  }

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<ProviderController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [              
              Selector<ProviderController, String>(
                selector: (context, controller) => controller.imageAvatar,
                builder: (context, name, child) {
                  return CircleAvatar(
                    backgroundImage: name != ''
                        ? NetworkImage(name)
                        : null,
                    radius: 40,
                  );
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Selector<ProviderController, String>(
                    selector: (context, controller) => controller.name,
                    builder: (context, imgAvatar, child) {
                      return Text(imgAvatar);
                    },
                  ),
                  const SizedBox(width: 4),
                  Selector<ProviderController, String>(
                    selector: (context, controller) => controller.birthDate,
                    builder: (context, birthDate, child) {
                      return Text(birthDate);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
