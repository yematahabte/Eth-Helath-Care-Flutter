import 'dart:developer';
import 'package:flutter/material.dart';

import '../components/login_button.dart';
import '../components/my_textfield.dart';
import '../components/register_button.dart';
import '../components/square_tile.dart';
import 'home_page.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            const SizedBox(height: 50),

            // username textfield
            MyTextField(
              controller: usernameController,
              hintText: 'First Name',
              obscureText: false,
            ),

            const SizedBox(height: 10),
            MyTextField(
              controller: usernameController,
              hintText: 'Last Name',
              obscureText: false,
            ),

            const SizedBox(height: 10),
            MyTextField(
              controller: usernameController,
              hintText: 'Email',
              obscureText: false,
            ),

            // sign in button
            const SizedBox(height: 10),

            RegisterButton(onTap: () {  },),
            // not a member? register now
          ],
        ),
      ),

    );

  }


}


  