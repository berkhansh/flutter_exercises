import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi  = ekranBilgisi.size.width;
    print(ekranYuksekligi);
    print(ekranGenisligi);

    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(

        leading: IconButton(
          icon:Icon(Icons.menu),
          color: Colors.white,
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            color: Colors.white,
            onPressed: (){},
          )

        ],

        elevation: 5,
        backgroundColor: backgroundColor,
      ),
      body: Column(

        children:[

          Container(
          child: Image.asset("images/cactus.jpg",width: ekranGenisligi,),

        ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top:ekranYuksekligi/250),
                child: Text("Cactus",style: TextStyle(fontSize: 30,fontFamily: 'Montaga',fontWeight: FontWeight.bold , color: (h1)), ),
              )
            ],
          ),
          Column(

            children: [
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi/70 ),
                child: Text("Cacti, renowned for their resilience, are succulent plants characterized by fleshy stems, spines, and vibrant flowers. Thriving in arid environments worldwide, they store water in their stems and feature distinctive areoles from which spines and flowers emerge. From towering saguaros to delicate prickly pears, cacti exhibit diverse forms. Beyond their ecological importance, they hold cultural significance and are prized as ornamental plants globally.",
                  style: TextStyle(fontFamily: 'Poppins',fontSize: 18,color: (h1),
                      )),
              )
            ]
          ),

      ]),

    );
  }
}
