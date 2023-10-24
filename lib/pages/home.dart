import 'package:flutter/material.dart';
import 'package:insta_clone/util/bubble_stories.dart';
import 'package:insta_clone/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = ['Edi','Marcos','Martel','Magna','Gabriel','Jerry'];
  UserHome({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,//Para que no me salga ningun color de fondo en el appbar
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram', style: TextStyle(color: Colors.black),),

            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),

          ],
        ),
      ),




      body: Column(
        children: [
          //   STORIES
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context,index){
              return BubbleStories(text: people[index]);
            }),
                //Para que listview se vea tengo que envolverlo con un container
                // y a este container darle una altura
            ),

          //  POSTS
          Expanded(
            child: ListView.builder(//para que pueda verse tengo que envolverlo en el widget expanded
              itemCount: people.length,
              itemBuilder: (context,index){
                return UserPosts(name: people[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
