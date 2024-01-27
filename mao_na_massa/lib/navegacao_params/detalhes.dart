import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  const Detalhes({super.key});

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  int id = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
      final param = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      setState(() {
        id = param?['id'] ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('$id'),
      ),
    );
  }
}
