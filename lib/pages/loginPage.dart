// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffb92b27), Color(0xff1565C0)]
          )
        ),
          child: Center(
              child: SingleChildScrollView(          
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Lottie.network("https://assets3.lottiefiles.com/private_files/lf30_m6j5igxb.json"),

                    Text("Welcome Back", 
                    style: GoogleFonts.oswald(fontSize: 40.0, color: Colors.yellow, shadows: <Shadow>[Shadow(offset: Offset(7.0,10.5),blurRadius: 10.0, color: Colors.yellow )]
                    )
                    ),
                    SizedBox(height: 15.0,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: 'E-mail', focusColor: Colors.white ,
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                    ),
                    SizedBox(height: 15.0,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: 'Password', focusColor: Colors.white ,
                        fillColor: Colors.white,
                        filled: true
                      ),
                    ),
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      margin:EdgeInsets.only(bottom: 90.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(340, 60),
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: Colors.yellow)
                          )
                        ),
                      onPressed: (() {
                        Navigator.pushNamed(context, '/Main Page');
                      }
                      ),
                      child: Text("Login", style: TextStyle(color: Colors.black, fontSize: 25.0),),
                      ),
                    )
                  ],               
                ),
              ),
             )         
          ),
      );  
  }
}