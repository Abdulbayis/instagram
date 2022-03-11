import 'package:flutter/material.dart';
import 'package:instagram/utili/explore_grid.dart';

class UserSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: EdgeInsets.all(8),
              color: Colors.grey[400],
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  Container(
                    child: Text(
                      'search',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  )
                ],
              ),
            ),
          )),
      body:ExploreGrid(),
    );
  }
}
