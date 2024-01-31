import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/model/post_model.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/widgets/post_widget.dart';

class FeedWidget extends StatelessWidget {
  final posts = <PostModel>[
    PostModel(
      userName: 'Mateus',
      userFoto: 'https://picsum.photos/200',
      imageFeed: 'https://picsum.photos/1000',
    ),
    PostModel(
      userName: 'Mateus',
      userFoto: 'https://picsum.photos/200',
      imageFeed: 'https://picsum.photos/1000',
    ),
    PostModel(
      userName: 'Mateus',
      userFoto: 'https://picsum.photos/200',
      imageFeed: 'https://picsum.photos/1000',
    ),
    PostModel(
      userName: 'Mateus',
      userFoto: 'https://picsum.photos/200',
      imageFeed: 'https://picsum.photos/1000',
    ),
  ];

  FeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostWidget(
          postData: posts[index],
        );
      },
    );
  }
}
