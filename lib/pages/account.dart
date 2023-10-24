import 'package:flutter/material.dart';
import 'package:insta_clone/util/account_tab1.dart';
import 'package:insta_clone/util/account_tab2.dart';
import 'package:insta_clone/util/account_tab3.dart';
import 'package:insta_clone/util/account_tab4.dart';
import 'package:insta_clone/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(



        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),



                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('200',
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                                  )),
                              Text('Posts')
                            ],
                          ),

                          Column(
                            children: [
                              Text('350',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30
                                  )),
                              Text('Followes')
                            ],
                          ),

                          Column(
                            children: [
                              Text('793',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30
                                  )),
                              Text('Following')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 20,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Raul Ventura', style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text('Ingeniering and development'),
                    ),
                    Text('www.youtube.com',style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [


                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Center(child: Text('Edit Profile'),),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Center(child: Text('Edit Profile'),),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Center(child: Text('Edit Profile'),),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ),
                    ),
                                    ],
                ),
              ),


              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  children: [
                    BubbleStories(text: 'Story 1'),
                    BubbleStories(text: 'Story 2'),
                    BubbleStories(text: 'Story 3'),
                    BubbleStories(text: 'Story 4'),
                  ],
                ),
              ),


              const TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.grid_3x3_outlined),),
                    Tab(icon: Icon(Icons.video_call),),
                    Tab(icon: Icon(Icons.shop),),
                    Tab(icon: Icon(Icons.person),),
                  ]
              ),


              Expanded(
                child: TabBarView(
                    children: [
                      AccountTab1(),
                      AccountTab2(),
                      AccountTab3(),
                      AccountTab4(),
                    ]
                ),
              ),





            ],
          ),
        ),

      ),
    );

  }
}