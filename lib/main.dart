import 'package:bitcontacts/screens/homepage.dart';
import 'package:bitcontacts/screens/splashpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.light(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color.fromARGB(255, 222, 238, 245)

      ),
      routes: {
        '/' : (context)=>MySplashPage(),
        '/list' :(context)=>Contacts(),
        // '/staff' :(context)=>StaffList(),
      },     

    );
  }
}