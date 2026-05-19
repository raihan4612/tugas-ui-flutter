import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String name;
  final String image;

  const StoryItem({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(image),
          ),
          const SizedBox(height: 5),
          Text(name),
        ],
      ),
    );
  }
}