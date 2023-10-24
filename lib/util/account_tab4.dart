import 'package:flutter/material.dart';

class AccountTab4 extends StatelessWidget {

  final List<String>userPosts=[];

  //const AccountTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 15,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: Colors.green[200],
          ),
        );
      },
    );
  }
}