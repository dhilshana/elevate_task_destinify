// ignore_for_file: file_names

import 'package:destinify/postCards/cardData.dart';
import 'package:destinify/story/images.dart';
import 'package:destinify/postCards/posts.dart';
import 'package:destinify/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardModel extends StatelessWidget {
  final PostData postData = PostData();

  CardModel({super.key});

  @override
  Widget build(BuildContext context) {
    List<cardData> data = postData.posts;
    List<Widget> postWidgets = [];
    final Images story = Images();


    for (int i = 0; i < data.length; i++) {
      var post = postData.posts[i];

      if (post.type == 'post') {
        postWidgets.add(PostModel(context, post.image, post.username,
            post.location, post.description, post.time,story.storyImages[i]));
      } else if (post.type == 'guide') {
        postWidgets.add(GuideModel(
            context, post.image, post.username, post.title, post.description,story.storyImages[i]));
      } else if (post.type == 'trip') {
        postWidgets.add(TripModel(context, post.image, post.username,
            post.location, post.description,story.storyImages[i]));
      }
    }

    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: postWidgets,
    );
  }

  // ignore: non_constant_identifier_names
}
