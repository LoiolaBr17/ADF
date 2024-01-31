import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/clone_instagram/model/post_model.dart';

class PostWidget extends StatelessWidget {
  final PostModel postData;

  const PostWidget({
    Key? key,
    required this.postData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black.withOpacity(.3),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(postData.userFoto),
                    ),
                    const SizedBox(width: 6),
                    Text(postData.userName),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 400,
              child: Image.network(
                postData.imageFeed,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(                      
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border_outlined),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.chat),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.save),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
