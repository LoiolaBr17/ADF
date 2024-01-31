import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/widgets/user_story_widget.dart';

class UserStoryCarroselWidget extends StatelessWidget {
  const UserStoryCarroselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            UserStoryWidget(
              urlImage: 'https://picsum.photos/100',
              userName: 'Mateus',
            ),
            SizedBox(width: 10),
            UserStoryWidget(
              urlImage: 'https://picsum.photos/100',
              userName: 'Mateus',
            ),          
            SizedBox(width: 10),
            UserStoryWidget(
              urlImage: 'https://picsum.photos/100',
              userName: 'Mateus',
            ),
            SizedBox(width: 10),
            UserStoryWidget(
              urlImage: 'https://picsum.photos/100',
              userName: 'Mateus',
            ),
            SizedBox(width: 10),
            UserStoryWidget(
              urlImage: 'https://picsum.photos/100',
              userName: 'Mateus',
            ),
            SizedBox(width: 10),
            UserStoryWidget(
              urlImage: 'https://picsum.photos/100',
              userName: 'Mateus',
            ),
            SizedBox(width: 10),
            UserStoryWidget(
              urlImage: 'https://picsum.photos/100',
              userName: 'Mateus',
            ),
            SizedBox(width: 10),
            UserStoryWidget(
              urlImage: 'https://picsum.photos/100',
              userName: 'Mateus',
            ),
          ],
        ),
      ),
    );
  }
}
