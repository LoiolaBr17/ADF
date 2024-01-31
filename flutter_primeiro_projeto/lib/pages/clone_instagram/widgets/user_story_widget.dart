import 'package:flutter/material.dart';

class UserStoryWidget extends StatelessWidget {
  final String urlImage;
  final String userName;

  const UserStoryWidget({
    super.key, 
    required this.urlImage,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(100),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              urlImage,
            ),
          ),
        ),
        Text(
          userName,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
