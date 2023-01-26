// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter10/pages/homePage.dart';
import 'package:flutter10/pages/loginPage.dart';
import 'package:flutter10/pages/mainPage.dart';
main(){
  return runApp(MyWidget());
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        // ignore: prefer_const_constructors
        '/': (context) => HomePage(),
        '/Login Page': (context) => LoginPage(),
        '/Main Page': (context) => MainPage()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: ((context) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Wallet App2"),
                centerTitle: true,
              ),
              body: Center(
                child: Text("Sehife Tapilmadi")
              ),
          );
        }
        
        )
        );
      },
    );
  }
}