import 'package:flutter/material.dart';
class UserPosts extends StatelessWidget {

  final String name;
  UserPosts({required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Row(children: [
               //profile photo
               Container(
                 height: 40,
                 width: 40,
                 decoration: BoxDecoration(
                     color: Colors.grey[300],
                     shape: BoxShape.circle
                 ),
               ),
               SizedBox(width: 5,),
               //Name
               Text(
                 name,
                 style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 12
                 ),
               ),
             ],
             ),
              Icon(Icons.menu),
            ],
          ),
        ),
        //posts
        Container(
          height: 200,
          color: Colors.grey[300],
        ),
        //below the ost =>buttons and comments
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        //Liked by
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'mariemkaram89',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(' and '),
              Text(
              'others',
              style: TextStyle(
              fontWeight: FontWeight.bold,
              ),
              ),

            ],
          ),
        ),
        //caption
        Container(
          padding: EdgeInsets.only(left: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
                children: [
                  TextSpan(
                    text:name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  TextSpan(text: 'I wish you all the best my lovely friend and hope u find all you deserve'),

                ]
            ),
          ),
        ),
        //comments

      ],
    );
  }
}
