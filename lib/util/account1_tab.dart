import 'package:flutter/material.dart';
class Account_tab1 extends StatelessWidget {
  // const ExpolreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount:20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),
        itemBuilder: (context,index)
        {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.lightBlue[100],
            ),
          );
        }
    );
  }
}
