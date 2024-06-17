import 'package:flutter/material.dart';
import 'package:project/screens/homeScreen.dart';
import 'package:project/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getData(context);
    // TODO: implement initState
    super.initState();
  }
  @override
  
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Text("Loading."),
      ),
    );
  }

  void getData(BuildContext context)async{
    final sharedPref = await SharedPreferences.getInstance();
   
    final String? loginData= sharedPref.getString('login_data');

    if(loginData!=null){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
    }
  }
}