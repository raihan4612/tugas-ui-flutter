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

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [

                  StoryItem(
                    name: 'Budi',
                    image: 'https://i.pravatar.cc/150?img=1',
                  ),

                  StoryItem(
                    name: 'Sari',
                    image: 'https://i.pravatar.cc/150?img=2',
                  ),

                  StoryItem(
                    name: 'Andi',
                    image: 'https://i.pravatar.cc/150?img=3',
                  ),
                ],
              ),
            ),

            const Divider(),

            const PostItem(
              username: 'budi_123',
              userImage: 'https://i.pravatar.cc/150?img=5',
              postImage: 'https://picsum.photos/500/400?1',
              caption: 'Liburan dulu 😎',
            ),

            const PostItem(
              username: 'sari_cantik',
              userImage: 'https://i.pravatar.cc/150?img=6',
              postImage: 'https://picsum.photos/500/400?2',
              caption: 'Healing tipis-tipis 🌸',
            ),

            const PostItem(
              username: 'andi_gaming',
              userImage: 'https://i.pravatar.cc/150?img=7',
              postImage: 'https://picsum.photos/500/400?3',
              caption: 'Main game santai 🎮',
            ),
          ],
        ),
      ),
    );
  }
}