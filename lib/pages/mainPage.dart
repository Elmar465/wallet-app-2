// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter10/pages/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller,
              children: [
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text("Wallet", style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 2,),
                            Text("Active",style: GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.w400))
                            ],
                          ),
                          // ignore: prefer_const_constructors
                          CircleAvatar(
                            radius: 27.0,
                            // ignore: prefer_const_constructors
                            backgroundImage: NetworkImage('https://scontent.fgyd4-2.fna.fbcdn.net/v/t1.6435-9/192331062_107712478187322_1919226145514806975_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lLOgLDF-y0IAX_D0Vw4&_nc_ht=scontent.fgyd4-2.fna&oh=00_AfBNk5ThwvTz72JECRCxmzYGpMSk2bJ6DkS4paiiHR9Xlg&oe=63E00BCD', scale: 30.0),
                          )
                        ],
                      ),
                      SizedBox(height: 12.0,),
                      Container(
                        width: MediaQuery.of(context).size.width,             
                        height: 200.0,
                        // color: secondaryColor,
                        padding: EdgeInsets.all(20),
                        child: FadeInImage.assetNetwork(placeholder: 'assets/loading.gif', image: "https://www.kapitalbank.az/images/cards/M/visa-business1642748176.png", fit: BoxFit.fill,)                                  
                      ),
                      SizedBox(height: 15.0,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200.0,
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            // ignore: prefer_const_literals_to_create_immutables
                            colors: [Color(0xffED213A), Color(0xff93291E)]
                          ),
                          borderRadius:BorderRadius.circular(12.0)
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Balance', style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2.0,),
                                  Text(r'$1000', style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Card", style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.bold)),
                                  Text("Kapital Bank",style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.bold))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                        buttonWidget(text: 'Transfer', icon: Iconsax.convert, callback: () {}),
                        buttonWidget(text: 'Payment', icon: Iconsax.export_1, callback: () {}),
                        buttonWidget(text: 'Pay out', icon: Iconsax.money, callback: () {}),
                        buttonWidget(text: 'Top up', icon: Iconsax.add, callback: () {}),
                       ],
                      )
                    ],                 
                   ),
                 )            
                 )
              ],
            )
          ]
        )   
      )
    );
  }
}

class buttonWidget extends StatelessWidget {
  const buttonWidget({

    Key? key, required this.text, required this.icon, required this.callback,
  }) : super(key: key) ;
  final String text;
  final IconData icon;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
        onPressed: callback,
      
        // ignore: sort_child_properties_last
        child: Icon(icon,
        color: secondaryColor,          
        ),
        style: OutlinedButton.styleFrom(
          shape: CircleBorder(),
          side:BorderSide(color: Colors.transparent),
          padding: EdgeInsets.all(16.0),
          elevation:5,
          backgroundColor: Colors.white,
          shadowColor: Colors.grey.withOpacity(0.2)
        ),
        ),
        SizedBox(height: 4.0),
        Text(text,style: GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.w400)),
      ],
    );
  }
}

