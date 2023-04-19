import 'package:clean_campus/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import 'myhomepage.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Container(
                      height: 200,
                      width: 200,
                      
                    child: Image(image: AssetImage('image/campus.jpg')),
                  ),
                  const Text(
                    'Clean Camus',
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
                  Row(
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
                  Container(
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
                ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  
                )
              ),
              height: 550,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children:  [
                    const SizedBox(height:15,),
                    const Padding(
                      padding: EdgeInsets.only(left: 10,right: 25),
                      child: Text('USER PROFILE',style: TextStyle(fontSize: 27,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Rubik Medium'),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10,right: 25),
                      child: Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    Row(
                      children: [
                        
                        Container(
                          
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                              width: 5
                            )
                          ),
                         child: const CircleAvatar(
                          radius: 60,
                          
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person,size:70,color: Colors.green,),
                         ),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          children: const [

                            Text('ID:2003100',style: TextStyle(fontSize: 18,fontFamily: 'Rubik Medium',color: Colors.white),),
                            SizedBox(height: 15,),
                            Text('ID:2003100',style: TextStyle(fontSize: 18,fontFamily: 'Rubik Medium',color: Colors.white),),

                      
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name :',style: TextStyle(fontSize: 15,fontFamily: 'Rubik Medium',color: Colors.white),),
                          SizedBox(height: 15,),
                        Text('E-mail :',style: TextStyle(fontSize: 15,fontFamily: 'Rubik Medium',color: Colors.white),),
                        SizedBox(height: 15,),
                        Text('Phone no.:',style: TextStyle(fontSize: 15,fontFamily: 'Rubik Medium',color: Colors.white),),
                        SizedBox(height: 15,),
                        Text('Password :',style: TextStyle(fontSize: 15,fontFamily: 'Rubik Medium',color: Colors.white),),
                        
                               
                        ],
                      ),
                    ),
                    SizedBox(height: 70,),
                    
                    
                     InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                       child: Container(
                        height: 70,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.white,
                            width: 4
                          )
                        ),
                        child: Center(child: Text('LOG OUT',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                     )

                    

                  ],

                ),
              ),
            )
          ],
        ),
      ),
            
    );
  }
}