// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(        
              // ignore: prefer_const_constructors
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                colors: [Color(0xff4e54c8), Color(0xff8f94fb)])
            ),
        child: SafeArea(     
            child: Column(
              children: [
                Lottie.network("https://assets6.lottiefiles.com/private_files/lf30_1TcivY.json"),
                OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.yellow,
                    fixedSize: Size(300, 80),
                    foregroundColor: Colors.black,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      side: BorderSide(color: Colors.black)
                    )
                  ),
                  onPressed: (() {
                    Navigator.pushNamed(context, '/Login Page');
                  }
                ),
                child: Text('Go To Next Page', style: GoogleFonts.oswald(fontSize: 30.0, shadows: <Shadow>[Shadow(offset: Offset(7.0,10.5),blurRadius: 10.0, color: Colors.black )] )),
                ),
                
              ],
            
            ),
          
        ),
      ),

    );
  }
}