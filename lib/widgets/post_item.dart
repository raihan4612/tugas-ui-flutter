import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
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
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {

  bool isLiked = false;
  bool showHeart = false;

  void handleLike() async {

    setState(() {
      isLiked = true;
      showHeart = true;
    });

    await Future.delayed(const Duration(milliseconds: 700));

    setState(() {
      showHeart = false;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // HEADER
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(widget.userImage),
          ),
          title: Text(
            widget.username,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: const Icon(Icons.more_vert),
        ),

        // FOTO + DOUBLE TAP
        GestureDetector(
          onDoubleTap: handleLike,
          child: Stack(
            alignment: Alignment.center,
            children: [

              Image.asset(
                widget.postImage,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),

              AnimatedOpacity(
                opacity: showHeart ? 1 : 0,
                duration: const Duration(milliseconds: 300),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 100,
                ),
              ),
            ],
          ),
        ),

        // ICON
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [

              Icon(
                isLiked
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: isLiked
                    ? Colors.red
                    : Colors.black,
              ),

              const SizedBox(width: 16),

              const Icon(Icons.comment_outlined),

              const SizedBox(width: 16),

              const Icon(Icons.send),
            ],
          ),
        ),

        // LIKES
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            isLiked
                ? 'Disukai oleh Anda dan lainnya'
                : 'Disukai oleh 120 orang',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // CAPTION
        Padding(
          padding: const EdgeInsets.all(10),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [

                TextSpan(
                  text: '${widget.username} ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextSpan(
                  text: widget.caption,
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 15),
      ],
    );
  }
}