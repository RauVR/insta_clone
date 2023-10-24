import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {

  final String name;

  const UserPosts({super.key, required this.name,});

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),

                  const SizedBox(width: 10,),

                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              
              const Icon(Icons.menu)
            ],
          ),
        ),

        //Post
        Container(
          height: 400,
          color: Colors.grey[400],
        ),

        // Below the post -> buttons and comments
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),

            ],
          ),
        ),

        //   Coments
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text('Liked by '),
              Text('Raul ',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('and '),
              Text('others ',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),


        //   Captions
        Padding(
          padding: const EdgeInsets.only(left: 16,top: 8),
          child: Align(
            alignment: Alignment.centerLeft,// por fin pude alinearlo envolviendo el rich text en un widget de align
            child: RichText(               // Otra forma de alinearlo hubiera sido usar crossAxisAlignment: CrossAxisAlignment.start,
            text: TextSpan(                // despues del primer column, con esto no hubiera sido necesario envolver con el widget align
                style: const TextStyle(color: Colors.black,),
                children: [
                  TextSpan(
                      text: name,
                      style: const TextStyle(fontWeight: FontWeight.bold)
                  ),
                  const TextSpan(text: "i turn the dirt they throwing into riches til im  filthy"),
                ]
              ),
              textAlign: TextAlign.start,


            ),
          ),
        ),


      ],
    );
  }
}
