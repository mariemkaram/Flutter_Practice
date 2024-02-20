import 'package:flutter/material.dart';
class DoctorCard extends StatelessWidget {
  // const DoctorCard({Key? key}) : super(key: key);
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;
  DoctorCard({
       required this.doctorImagePath,
        required this.doctorName,
        required this.doctorProfession,
        required this.rating,
  } );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Expanded(
        child: Container(
          padding:EdgeInsets.all(10),
          child: Container(

            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10),
             color: Colors.deepPurple[100],
            ),
              child: Center(
                child: Column(
                  children: [
                    //doctor picture
                    ClipRRect(
                      borderRadius: BorderRadius.circular(58),
                      child: Image(
                        image: AssetImage(
                          doctorImagePath,
                        ),
                        height: 70,
                      ),
                    ),
                    // Image.asset(
                    //   "lib/images/usman-yousaf-pTrhfmj2jDA-unsplash.jpg",
                    //   height: 100,
                    // ),

                    //rating
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[400],
                        ),
                        Text(
                            rating,
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 5,),
                    //doctor name
                    Text(
                      doctorName,
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    //doctoe title
                    Text(doctorProfession+" 7 y.e"),
                  ],
                ),
              )





          ),
        ),
      ),
    );
  }
}
