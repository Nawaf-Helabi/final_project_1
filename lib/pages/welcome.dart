// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.amber,

        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Text(
                    'Welcome',
                    style: TextStyle(fontFamily: 'myfonts', fontSize: 40),
                  ),
                   SizedBox(height: 20),
                  SvgPicture.asset('icons/chat.svg',width: 300,),
                   SizedBox(height: 20),
                   
                   ElevatedButton(style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20,horizontal: 100)),
                    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 206, 120, 221)),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                   ),
                    onPressed: (){  Navigator.pushNamed(context, '/login');}, child: Text('LOGIN')),
                    SizedBox(height: 15),
                     ElevatedButton(style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20,horizontal: 100)),
                    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 231, 175, 241)),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                   ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/signup');
                    
                    }, child: Text('SIGNUP')),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/main_bottom.png',
                  width: 100,
                )),
            Positioned(
                child: Image.asset(
              'assets/main_top.png',
              width: 170,
            )),
          ],
        ),
      ),
    );
  }
}
