import 'package:flutter/material.dart';

class ShopeGrid extends StatelessWidget {
  final List<String> userPost = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate:
       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
      itemBuilder: (context,inedx){
     return Padding(
       padding: const EdgeInsets.all(2.0),
       child: Container(
         color: Colors.pink[100],
       ),
     );
      });
  }
}