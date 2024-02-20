import 'package:flutter/material.dart';
import 'package:untitled1/util/shop_grid.dart';
class UserShop extends StatelessWidget
{
  const UserShop({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shop',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.calendar_today),
                ),
                Icon(Icons.menu),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                    Container(
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.grey[500]),),
                    ),
                  ],
                ),
              ),
            ),
          ),
    Expanded(
      child: ShopGrid(),
        ),
        ],
      ),

    );
  }
}