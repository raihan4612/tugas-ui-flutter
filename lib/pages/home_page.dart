import 'package:flutter/material.dart';
import '../widgets/story_item.dart';
import '../widgets/post_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
      ),

      body: Center(
        child: SizedBox(
          width: 400,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 110,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      StoryItem(
                        name: 'Hanns4612',
                        image: 'assets/images/pp-1.jpg',
                      ),
                      StoryItem(
                        name: 'Budi_gaming',
                        image: 'assets/images/pp-2.jpg',
                      ),
                      StoryItem(
                        name: 'Andi',
                        image: 'assets/images/pp-3.jpg',
                      ),
                    ],
                  ),
                ),

                const Divider(),

                const PostItem(
                  username: 'hanns4612',
                  userImage: 'assets/images/pp-1.jpg',
                  postImage: 'assets/images/post1.jpg',
                  caption: 'Nugas dulu biar hidup tenang!',
                ),

                const PostItem(
                  username: 'ryan_gaming',
                  userImage: 'assets/images/pp-2.jpg',
                  postImage: 'assets/images/post2.jpg',
                  caption: 'P.. info mabar nih? 😎',
                ),

                const PostItem(
                  username: 'andi_siMuncak',
                  userImage: 'assets/images/pp-3.jpg',
                  postImage: 'assets/images/post3.jpg',
                  caption: 'Muncak gunung itu indah, tapi lebih indah lagi kalau bisa mabar bareng temen-temen! 🏔️',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}