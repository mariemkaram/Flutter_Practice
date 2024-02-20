import 'package:flutter/material.dart';
import 'package:untitled1/util/bubble_stories.dart';
import 'package:untitled1/util/user_post.dart';
class UserHome extends StatelessWidget
{
  final List people =[
    'Mariemkaram',
    'Gehadkaram',
    'Lailakaram',
    'Mohammmedkaram',
    'Gehadkaram',
    'Mariemkaram',
    'Lailakaram',
    'Ranakaram',
    'Mohammmedkaram',
    'Gehadkaram'
  ];

@override
Widget build(BuildContext context)
{
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation:0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              'Instagram',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Icon(Icons.add),
              Padding(
                padding: const EdgeInsets.all(15.0),
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
        //Stories
        Container(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount:people.length,
              itemBuilder:(context,index)
          {
            return BubbleStories(text: people[index]);
          })
          ),
        //Posts
        Expanded(
          child: ListView.builder(
            itemCount: people.length,
              itemBuilder: (context,index){
            return UserPosts(name: people[index]);
          }),
        ),

      ],
    )

  );
}
}