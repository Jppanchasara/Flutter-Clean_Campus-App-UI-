import 'package:clean_campus/login.dart';
import 'package:clean_campus/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VarificationScreen extends StatefulWidget {
  const VarificationScreen({super.key});

  @override
  State<VarificationScreen> createState() => _VarificationScreenState();
}

class _VarificationScreenState extends State<VarificationScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                    child: Center(
                  child: Lottie.asset('image/Lottie/clean.json'),
                )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(children: [
                      Text(
                        'VERIFICATION',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik Medium'),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'OTP has been Sent to :',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik Regular'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '+91 8980659780',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik Regular'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: PinCodeTextField(
                          appContext: context,
                          cursorColor: Colors.black,
                          //obscureText: true,
                          // obscuringCharacter: '.',
                          length: 4,
                          keyboardType: TextInputType.number,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(10),
                            borderWidth: 4,
                            fieldHeight: 50,
                            fieldWidth: 50,
                            activeFillColor: Colors.white,
                            inactiveFillColor: Colors.pink,
                            selectedFillColor: Colors.red,
                            selectedColor: Colors.pink,
                            inactiveColor: Colors.white,
                            activeColor: Colors.white,
                          ),
                          onChanged: (String value) {},
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Container(
                            height: 50,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                border:
                                    Border.all(color: Colors.black, width: 4)),
                            child: Center(
                                child: Text(
                              'VERIFY OTP',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                          )),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
