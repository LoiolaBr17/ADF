import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: const SizedBox(
        width: 100,
        height: 100,
        // child: CircleAvatar(
        //   backgroundImage: NetworkImage('https://picsum.photos/100'),
        // ),
        child: ImageAvatar(url: 'https://picsum.photos/100'),
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String url;

  const ImageAvatar({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(url),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),            
            child: const Text(
              'AO VIVO',
              style: TextStyle(
                fontSize: 8,
              ),
            ),
          ),
        )
      ],
    );
  }
}
