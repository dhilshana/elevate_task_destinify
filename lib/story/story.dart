import 'package:destinify/story/images.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  StorySection({super.key});

  final Images images = Images();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: images.storyImages.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.teal,
                    width: 2,
                  )),
              child: CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset(
                    images.storyImages[index],
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
