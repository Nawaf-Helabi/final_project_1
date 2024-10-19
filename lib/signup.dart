// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: [
          Container(
            width: double.infinity,
            child: Column(children: [
              Text('SIGNUP',style: TextStyle(fontFamily: 'myfonts',fontSize: 50),),
              SvgPicture.asset('icons/signup.svg'),
              SizedBox(height: 20,),
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
                  SizedBox(height: 20,),
                   ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            vertical: 20, horizontal: 100)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 206, 120, 221)),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {},
                      child: Text('SIGN UP')),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an Account ?',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w700),),
                           TextButton(onPressed: (){
                            Navigator.pushNamed(context, '/login');
                           }, child: Text(' Login',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w700),),),
                        ],
                      ),
                     
                      Divider(),
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        CircleAvatar(
                          radius: 25,
                          child: SvgPicture.asset('icons/facebook.svg',width: 20,color: Colors.purple,)),
                          SizedBox(width: 30,),
                        CircleAvatar(
                           radius: 25,child: SvgPicture.asset('icons/twitter.svg',width: 20,color: Colors.purple,)),
                        SizedBox(width: 30,),
                        CircleAvatar( radius: 25,
                          child: SvgPicture.asset('icons/google-plus.svg',width: 20,color: Colors.purple,)),

                        
                      ],)
                      
              
            ],),
          ),
          Positioned(bottom: 0,
            child: Image.asset('assets/main_bottom.png',width: 80,)),
          Positioned(child: Image.asset('assets/signup_top.png',width: 150,)),
        ],),
      ),

    );
  }
}