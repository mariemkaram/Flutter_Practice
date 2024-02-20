import 'package:flutter/material.dart';
import 'package:untitled1/doctorCard.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget
{
const  HomePage({Key ?key}): super(key:key);
@override
  State<HomePage> createState() => _HomePageState();

}
class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body:SafeArea(
        child:
          Column(
            children: [
              //appBar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children:
                      [
                        Text("Hello,",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("joooo,",style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    //profile pic
                    Icon(Icons.person),

                  ],
                ),

              ),
              SizedBox(height: 20,),
              //card->how do you feel
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:Row(
                    children: [
                      //animation or photo
                      Container(
                        height: 100,
                        width: 100,
                        child: Lottie.network('https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
                        color: Colors.deepPurple[200],
                      ),
                      SizedBox(width: 20,),

                      //how do you feel and button
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("How do you feel?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            SizedBox(height: 10,),
                            Text("fill out do your medical card right now",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration
                                (color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child:Center(
                              child: Text("Get started",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                              )
                            )

                          ],
                        ),
                      )
                    ],
                  ) ,
                ),
              ),
              SizedBox(height: 25,),
              //search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                  color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration:
                    InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText:'How can we help you?',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              //horizontal  listview ->catogries
              Container(
                height:80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        color :Colors.deepPurple[200],
                      ),
                      child:
                          Text('Therapist'),

                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color :Colors.deepPurple[200],),
                      child:
                      Text('Dentist'),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color :Colors.deepPurple[200],),
                      child:
                      Text('surgeon'),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color :Colors.deepPurple[200],),
                      child:
                      Text('surgeon'),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color :Colors.deepPurple[200],
                      ),
                      child:
                      Text('Therapist'),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color :Colors.deepPurple[200],),
                      child:
                      Text('Dentist'),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color :Colors.deepPurple[200],),
                      child:
                      Text('surgeon'),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Container(
                      padding:EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color :Colors.deepPurple[200],),
                      child:
                      Text('surgeon'),

                    ),
                  ),
                ],
                ),
              ),
              SizedBox(height: 20,),
              //doctor list
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctor List",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                    Text(
                      "see all",
                      style:TextStyle (
                          color: Colors.grey[500],
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                //child: Container(decoration: BoxDecoration(color: Colors.blue)),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                    DoctorCard(
                      doctorImagePath: 'lib/images/Screenshot 2022-11-12 234403.png',
                      doctorName: "Dr. Mariem Karam",
                      doctorProfession: "Therapist",
                      rating: "4.8",
                    ),
                      DoctorCard(
                        doctorImagePath: 'lib/images/Screenshot 2022-11-12 234403.png',
                        doctorName: "Dr. Mariem Karam",
                        doctorProfession: "Therapist",
                        rating: "4.8",
                      ),
                      DoctorCard(
                        doctorImagePath: 'lib/images/Screenshot 2022-11-12 234403.png',
                        doctorName: "Dr. Mariem Karam",
                        doctorProfession: "Therapist",
                        rating: "4.8",
                      ),
                      DoctorCard(
                        doctorImagePath: 'lib/images/Screenshot 2022-11-12 234403.png',
                        doctorName: "Dr. Mariem Karam",
                        doctorProfession: "Therapist",
                        rating: "4.8",
                      ),
                      DoctorCard(
                        doctorImagePath: 'lib/images/Screenshot 2022-11-12 234403.png',
                        doctorName: "Dr. Mariem Karam",
                        doctorProfession: "Therapist",
                        rating: "4.8",
                      ),
                      DoctorCard(
                        doctorImagePath: 'lib/images/Screenshot 2022-11-12 234403.png',
                        doctorName: "Dr. Mariem Karam",
                        doctorProfession: "Therapist",
                        rating: "4.8",
                      ),


                  ],
                  )
              )
            ]
          ),

      )
    );
  }

}
