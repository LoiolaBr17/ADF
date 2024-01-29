import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return DialogCustom(context);
                  },
                );
              },
              child: const Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        contentPadding: const EdgeInsets.all(10),
                        title: const Text('SimpleDialog'),
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('lorem lorel lorem'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.close_rounded),
                          ),
                        ],
                      );
                    });
              },
              child: const Text('SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      if (Platform.isAndroid){}
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('Texto de exemplo'),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.close),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {}, child: const Text('Cancelar')),
                          TextButton(
                              onPressed: () {}, child: const Text('Salvar')),
                        ],
                      );
                    });
              },
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print(selectedTime);
              },
              child: const Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2024),
                  lastDate: DateTime(2028),
                );
                print('A data selecionada foi: $selectedDate');
              },
              child: const Text('Date Picker'),
            ),
          ],
        ),
      ),
    );
  }
}
