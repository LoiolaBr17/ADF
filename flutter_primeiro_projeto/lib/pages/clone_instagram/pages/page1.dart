import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/widgets/feed_widget.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/widgets/user_story_carrosel_widget.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const UserStoryCarroselWidget(),
            FeedWidget(),
          ],
        ),
      ),
    );
  }
}
