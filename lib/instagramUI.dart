import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/account.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/shop.dart';
import 'package:untitled1/reals.dart';
import 'package:untitled1/search.dart';

class InstagramUI extends StatefulWidget
{
  const InstagramUI({Key? key}):super(key: key);
  @override
  _InstagramUIState createState()=> _InstagramUIState();
}
class _InstagramUIState extends State<InstagramUI>
{
  //navigate around the bottom nav bar
  int selectedindex=0;
  void navigateButtomNavBar(int index)
  {
    setState(() {
      selectedindex=index;
    });

  }

  //different pages to navigate to
  final List<Widget> childern=
      [
        UserHome(),
        UserSearch(),
        UserReals(),
        UserShop(),
        UserAccount(),

      ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:childern[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        onTap: navigateButtomNavBar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label:'search'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label:'reals'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label:'shop'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label:'person'
          ),
        ],
        ),
      );
  }

}