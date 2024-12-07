import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant/imageconst.dart';
import 'login_otp.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top section with decorative icons
            Stack(
              children: [
                // Container(
                //   height: 350,
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage(ImageConst.logo,), // Replace with your decorative image
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Center(
                    child: Column(
                      children: [Image.asset(ImageConst.logo,scale:6,),
                        const SizedBox(height: 10),
                        const Text(
                          "Your Home Service Expert",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          "Quick · Affordable · Trusted",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Input section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const SizedBox(height: 10),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          '+91',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      hintText: "Enter Mobile Number",

                    ),
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {

                    },

                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),

                    ),


                    child:Container(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerificationScreen ()));
                        },
                        child: const Text(
                          "Get Verification Code",
                          style: TextStyle(fontSize: 16,color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Why Choose Us section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "______  Why Choose Us ______",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 200, // adjust the height to your liking
                    width: 275, // adjust the width to your liking
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10), // add a curved shape
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.verified, color: Colors.blue),
                          title: Text("Verified technicians"),
                        ),
                        ListTile(
                          leading: Icon(Icons.timer, color: Colors.blue),
                          title: Text("On-time service"),
                        ),
                        ListTile(
                          leading: Icon(Icons.support_agent, color: Colors.blue),
                          title: Text("Customer Support"),
                        ),
                      ],
                    ),
                  )




                  // Container(
                  //
                  //   color: Colors.grey.shade300,
                  //   child: Column(
                  //      children: [
                  //
                  //
                  //
                  //        ListTile(
                  //          leading: Icon(Icons.verified, color: Colors.blue),
                  //          title: Text("Verified technicians"),
                  //        ),
                  //        ListTile(
                  //          leading: Icon(Icons.timer, color: Colors.blue),
                  //          title: Text("On-time service"),
                  //        ),
                  //        ListTile(
                  //          leading: Icon(Icons.support_agent, color: Colors.blue),
                  //          title: Text("Customer Support"),
                  //        ),
                  //      ],
                  //   ),
                  // )

                ],
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.bottomRight, // Align to the left side
              child: TextButton(
                onPressed: () {
                  // Navigate to next screen
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            )

            // Footer Skip Button
            // TextButton(
            //   onPressed: () {
            //     // Navigate to next screen
            //   },
            //   child: const Text(
            //     "Skip",
            //
            //     style: TextStyle(color: Colors.grey),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}