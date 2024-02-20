import 'package:flutter/material.dart';
import 'package:untitled1/util/bubble_stories.dart';
import 'package:untitled1/util/account1_tab.dart';
import 'package:untitled1/util/account2_tab.dart';
import 'package:untitled1/util/account3_tab.dart';
import 'package:untitled1/util/account4_tab.dart';
class UserAccount extends StatelessWidget
{
  const UserAccount({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20.0,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //picture profile
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  //number of posts ,followers and following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('26',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            Text('Posts'),
                          ],

                        ),
                        Column(
                          children: [
                            Text('26',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            Text('followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('26',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                            Text('following'),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            //name and bio
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'mariemkaram',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'I create apps and games',
                  ),
                  Text(
                    'mariemkaram89@gmail.com',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
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
                        padding: EdgeInsets.only(left: 6),
                        child: Center(
                        child: Text('Edit profile'),
                        ),
                        decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        ),
                        ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 6),
                        child: Center(
                          child: Text('Edit profile'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.only(left: 6),
                        child: Center(
                          child: Text('Edit profile'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //stories
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BubbleStories(text: 'story1'),
                  BubbleStories(text: 'story2'),
                  BubbleStories(text: 'story3'),
                  BubbleStories(text: 'story4'),
                  BubbleStories(text: 'story5'),
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
              ),
            ],),
            Expanded(
                child:TabBarView(
                  children: [
                    Account_tab1(),
                    Account_tab2(),
                    Account_tab3(),
                    Account_tab4(),
                  ],
                ))
          ],
        )

      ),
    );
  }
}