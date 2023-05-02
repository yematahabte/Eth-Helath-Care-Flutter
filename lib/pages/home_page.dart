import 'dart:html';

import 'package:flutter/material.dart';
import 'package:eth_health_care/components/login_button.dart';
import 'package:eth_health_care/components/square_tile.dart';
import 'package:eth_health_care/components/my_textfield.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2DDC4),
      appBar: AppBar(
        backgroundColor: Color(0xFF978787),
        title:Row(
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
            fontWeight: FontWeight.bold,fontSize: 30, color: Colors.black),
      ),
    );
  }
}