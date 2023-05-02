import 'dart:developer';
import 'package:eth_health_care/pages/register_user.dart';
import 'package:flutter/material.dart';

import '../components/login_button.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';
import 'home_page.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String error_message='';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFE2DDC4),
      appBar: AppBar(
        backgroundColor: Color(0xFF978787),
        title: Row(
          children: [
            Text(
              'ETH ',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontFamily: 'MarkOne',
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'HEALTH ',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontFamily: 'MarkOne',
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'CARE ',
              style: TextStyle(
                  color: Colors.yellow,
                  fontFamily: 'MarkOne',
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),

          ],
        ),

        titleTextStyle: TextStyle(fontFamily: 'MarkOne',
            fontWeight: FontWeight.bold,fontSize: 30, color: Colors.green),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //welcome and logo
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(15),
              ),
              child: Container(
                child:Column(
                  children: [
                    SquareTile(imagePath: 'lib/images/logo.png'),
                    Text(
                      'Welcome To ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'MarkOne',
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Login System! ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'MarkOne',
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  ],
                ),


              ),
            ),


            const SizedBox(height: 25),

            // username textfield
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password textfield
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            Text(error_message,
                style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'MarkOne',
                )
            ),


            const SizedBox(height: 25),

            // sign in button
            MyButton(
              onTap:  () {
                if((passwordController.text).isNotEmpty && usernameController.text.isNotEmpty &&
                    (usernameController.text).contains("@") && (usernameController.text).contains(".com"))
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return HomePage();
                      }));

                }
                else {
                  setState(() {
                    if((usernameController.text).isEmpty) {
                      error_message = 'Username cannot be empty!';
                    }else if ((passwordController.text).isEmpty){
                      error_message = 'Password cannot be empty!';
                    }else{
                      error_message = 'Invalid Email!';
                    }
                  });

                };


              } ,
            ),


            const SizedBox(height: 50),
            // not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Register();
                      }));},
                  child: const Text(
                    'Sign up now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),

    );

  }


}


  