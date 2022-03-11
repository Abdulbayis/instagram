import 'package:flutter/material.dart';
import 'package:instagram/utili/buble_story.dart';

import '../utili/account_tab1.dart';
import '../utili/account_tab2.dart';
import '../utili/account_tab3.dart';
import '../utili/account_tab4.dart';

class UserAcount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Darrider1011",
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
                    child: Icon(Icons.menu)),
                ),
              ],
            )
          ],
        ),
      ),
        body: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //profile picture

                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  // number of posts,followers

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '237',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text('posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '1M',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text('followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '764',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text('following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // name and bio
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Darkrider1011',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'KL 10',
                    ),
                  ),
                  Text(
                    'm.youtube.com/darkco/',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: GestureDetector(
                        onTap: (){
                          // do somthing
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Center(child: Text('Edit profile')),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Add Tools')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Insights')),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Bublestory(text: 'story 1'),
                  Bublestory(text: 'story 2'),
                  Bublestory(text: 'story 3'),
                  Bublestory(text: 'story 4'),
                ],
              ),
            ),
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              )
            ],
            ),
            Expanded(child: TabBarView(children: [
             AccountTab1(),
             AccountTab2(),
             AccountTab3(),
             AccountTab4(),
            ])),
          ],
        ),
      ),
    );
  }
}
