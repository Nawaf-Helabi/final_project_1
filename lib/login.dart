// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(fontFamily: 'myfonts', fontSize: 50),
                  ),
                  SvgPicture.asset('icons/login.svg'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 234, 179, 243),
                    ),
                    width: 300,
                    height: 45,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.purple,
                          ),
                          hintText: 'Email :',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 226, 34, 255),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 234, 179, 243),
                    ),
                    width: 300,
                    height: 45,
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.purple,
                        ),
                        hintText: 'Password :',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 223, 15, 255),
                        ),
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            vertical: 20, horizontal: 100)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 206, 120, 221)),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {},
                      child: Text('LOGIN')),
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Do not have an account ?',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w700),),
                           TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/signup');
                           }, child: Text(' Sign up',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w700),),),
                        ],
                      ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/login_bottom.png',
                  width: 100,
                )),
            Positioned(
                child: Image.asset(
              'assets/main_top.png',
              width: 120,
            )),
          ],
        ),
      ),
    );
  }
}
