import 'package:bitcontacts/main.dart';
import 'package:bitcontacts/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:sample3/screens/homepage.dart';

class MySplashPage extends StatefulWidget {
  const MySplashPage({Key? key}) : super(key: key);

  @override
  _MySplashPageState createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), (() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Contacts()));
    }));
    super.initState();
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Lottie.network(
            'https://assets7.lottiefiles.com/private_files/lf30_uvrwjrrs.json'),
            
            
      ),
      
    );
  }

 
}