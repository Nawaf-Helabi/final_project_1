 import 'package:final_project_1/login.dart';
import 'package:final_project_1/pages/welcome.dart';
import 'package:final_project_1/signup.dart';
import 'package:flutter/material.dart';




 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/' : (context) => const Welcome(),
        '/signup' : (context) => const Signup(),
        '/login' : (context) => const Login(),
        

      }
      
      ,
    );
  }
}