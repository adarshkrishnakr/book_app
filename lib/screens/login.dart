import 'dart:js';

import 'package:flutter/material.dart';
import 'package:project/screens/homeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
   Login({super.key});
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: "Mobile",
              ),
            ),
            ElevatedButton(onPressed: (){
              submit(context);
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
  void submit(BuildContext context)async{
    final sharedPref = await SharedPreferences.getInstance();
    sharedPref.setString("login_data", _textController.text);
  

    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));




  }
}