import 'package:chatting/Screens/chat_room.dart';
import 'package:chatting/Screens/search_widget.dart';
import 'package:chatting/Screens/servie.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 45,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1.0, color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                // margin: EdgeInsets.only(left: 15),

                                child: Icon(
                              Icons.date_range,
                              color: Colors.grey,
                            ))),
                        Expanded(
                            flex: 4,
                            child: Container(
                              child: Text(
                                " 02 August, 2022",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              // color: Colors.orange,
                              child: Icon(
                                IconlyLight.arrow_down_2,
                                color: Colors.grey,
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Hi Niiniile!",
                        style: TextStyle(fontSize: 25, color: Colors.blue),
                      )),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Let\'s Find Your Doctor!",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              search_widget(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    service(),
                    service(),
                    service(),
                  ],
                ),
              ),
              Container(
                height: 130,
                margin: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: Color.fromARGB(255, 57, 3, 217)
                    color: Color.fromARGB(255, 28, 48, 202)),
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "How to Save your Live from Covid 19",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                letterSpacing: 1),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 120,
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orange.shade300,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>chat_room()));
                              },
                              child: Text(
                                "Read More",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Image(image: AssetImage('images/cor.png')),
                  ))
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 20),
                    child: Text(
                      "Popular Doctors",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 25),
                    child: Text(
                      "View All",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              Container(
                height: 115,
                width: double.infinity,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  // boxShadow: kElevationToShadow[1],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left:10,top: 10,bottom: 5,right: 10),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                image: AssetImage(
                                  "images/d1.jpg",
                                ),
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              )),
                        ),
                      
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text("Dr. Joseph David",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                                    overflow: TextOverflow.ellipsis,),
                                  ),
                                ],
                              ),
                              Text("Cardiologist"),
                              Row(
                                children: [
                                  Icon(IconlyLight.location,color: Colors.grey.shade600, size: 20,),
                                  Text("United Hospital, Daka",style: TextStyle(color: Colors.grey.shade600),),
                                ],
                              ),
                            ],
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(IconlyLight.arrow_right_2,size: 30,)
                            ],
                          ),
                        )
                      
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:10.0,left: 10),
                          child: Row(
                            children: [
                              Icon(IconlyLight.time_circle),
                              Text(" 9:00am-1:00pm"),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom:10.0, right: 10),
                          child: RichText(
                          
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: "Clinic fee:",style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(text: "\$100",style: TextStyle(fontWeight: FontWeight.bold,))
                              ]
                            ),
                            ),
                          
                        ),
                        ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
