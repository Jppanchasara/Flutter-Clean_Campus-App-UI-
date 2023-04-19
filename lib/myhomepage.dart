

import 'package:clean_campus/profile.dart';
import 'package:clean_campus/reviewed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> image = [
    'image/1.jpg',
    'image/2.jpg',
    'image/3.jpg',
    'image/4.jpg'
  ];
  List<String> location = ['L.E College A Building','Gondal Road','Chamaraj,Dudharej','Near by Temple'];
  List<String> time = ['7:30 PM', '9:46 AM', '12:00 AM', '5:32 AM'];
  List<String> state = ['Morbi,Gujarat','Rajkot,Gujarat','Surendranagar,Gujart','Dwarka.Gujarat'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(240, 255, 255, 255),
            drawer: Drawer(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Image(
                    image: AssetImage('image/campus.jpg'),
                    height: 250,
                    width: 500,
                  ),
                  const Text(
                    'Clean Campus',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.green,
                        fontFamily: 'rubik_regular'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: Row(
                      children: const [
                        SizedBox(width: 5),
                        Icon(
                          Icons.home,
                          size: 32,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    child: Row(
                      children: const [
                        SizedBox(width: 5),
                        Icon(
                          Icons.person,
                          size: 32,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black87,
                    thickness: 1,
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children:const [
                            Text(
                              'FeedBack',
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'About App',
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'About Us',
                              style: TextStyle(fontSize: 13),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  InkWell(
                    onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text(
                        'Log Out',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            )),
            appBar: AppBar(
                backgroundColor: Colors.green,
                centerTitle: true,
                title: Text(
                  'Clean Campus',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                actions:  [
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen()));
                    },
                    child: Icon(
                      Icons.person,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ]),
            body: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                            
                          },
                          child: Container(
                            
                            height: 50,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(25)),
                            child: const Center(
                                child: Text(
                              'COMPLAINT',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewedScreen()));
                            
                            
                          },
                          child: Container(
                            height: 50,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(25)),
                            child: const Center(
                                child: Text(
                              'REVIEWED',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    
                                    
                                      child: Image(
                                        height: 250,
                                    image: AssetImage(image[index].toString()),
                                  )),
                                  Row(
                                    children: [
                                      Icon(Icons.location_city_rounded),
                                      SizedBox(width: 10,),
                                      Text(location[index].toString())
                                      
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.add),
                                      SizedBox(width: 10,),
                                      Text(state[index].toString())
                                      
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(time[index].toString()))
                                ],
                              ),
                            
                          ),
                        );
                      }),
                )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            )));
  }
}
