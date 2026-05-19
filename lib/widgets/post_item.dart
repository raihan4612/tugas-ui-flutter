import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String username;
  final String userImage;
  final String postImage;
  final String caption;

  const PostItem({
    super.key,
    required this.username,
    required this.userImage,
    required this.postImage,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(userImage) as ImageProvider,
          ),
          title: Text(
            username,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(Icons.more_vert),
        ),

        Image.asset(
          postImage,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: const [
              Icon(Icons.favorite_border),
              SizedBox(width: 16),
              Icon(Icons.comment_outlined),
              SizedBox(width: 16),
              Icon(Icons.send),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: '$username ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: caption),
              ],
            ),
          ),
        ),

        const SizedBox(height: 15),
      ],
    );
  }
}