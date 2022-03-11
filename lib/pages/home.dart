import 'package:flutter/material.dart';
import 'package:instagram/utili/user_post.dart';

import '../utili/buble_story.dart';

class HomeUser extends StatelessWidget {
  final List people = ['bayis', 'fasil', 'favas', 'ijas', 'ashi', 'faris'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "instaagram",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      // do something
                    },
                    child: Icon(Icons.add)),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //storys
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return Bublestory(text: people[index]);
                  })),
          //POSTS
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(name: people[index]);
                }),
          )
        ],
      ),
    );
  }
}
