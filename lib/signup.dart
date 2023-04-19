import 'package:clean_campus/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import 'Varification.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        
        primarySwatch: Colors.green,
      ),
      home:Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: Lottie.asset('image/Lottie/clean.json'),
              ),
              
              ),
            Container(
              
              height: 460,
              width:double.infinity,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(80)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  
                  Text('SIGN UP',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Rubik Medium'),),
                  SizedBox(height: 5,),
                  TextFormField(
                    keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: 'User Name',
                      
                      
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color(0xff323F48),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:const  BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(25)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(25))),
                   ),
                   SizedBox(height: 5,),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: 'Phone',
                      
                      
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Color(0xff323F48),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:const  BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(25)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(25))),
                   ),
                   SizedBox(height: 5,),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      
                      
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.alternate_email,
                        color: Color(0xff323F48),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:const  BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(25)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(25))),
                   ),
                   SizedBox(height: 5,),
                   TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.lock_open,color: Color(0xff323f48),),
                      suffixIcon: const Icon(Icons.visibility_off_outlined),
                      
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4E7E8)),
                        borderRadius: BorderRadius.circular(25),
                      
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Color(0xffE4E7EB))
                      )

                    ),
                   ),
                   SizedBox(height: 5,),
                   TextButton(
                    onPressed: (){

                    }, 
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VarificationScreen()));
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.black,
                            width: 4
                          )
                        ),
                        child: Center(child: Text('VERIFICATION',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),)),
                      ),
                    )),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Already have an account?',style: TextStyle(fontSize: 17,color: Colors.white),),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

                            },
                            child: Text('Sign in',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )

            
                ]),
              ),
            )
          ],
        ),
      ),
    )
   
    );
    
  }
}