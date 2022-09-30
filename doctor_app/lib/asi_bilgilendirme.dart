import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:doctor_app/main_page.dart';

import 'dart:math';
import 'package:flutter/foundation.dart';

class asibilgilendirme extends StatelessWidget {
  const asibilgilendirme({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyApp(),
    );
  }
}

// // class doktorlar

// // class MyApp extends State<MyApp> {
// //   int _selecetedIndex=0;

// //   void onTapped(int value){
// //     setState(() {
// //       _selecetedIndex=value;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(

// //       backgroundColor: mainBgcolor,

// //       body: Center(

// //         child: SingleChildScrollView()),

// //         bottomNavigationBar: BottomNavigationBar(
// //           showSelectedLabels: false,
// //           showUnselectedLabels: false,
// //           currentIndex: _selecetedIndex,

// //           items: <BottomNavigationBarItem>[
// //             Icon(Line): Icon(LineAwesomeIcons.home,size: 30.0,),title: Text('1'),

// //           ],

// //         ),
// //     );
// //   }
// // }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Aşı Takvimi';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: asiTakvimi(),
      ),
    );
  }
}

class asiTakvimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: <Widget>[
      Container(
        width: 450,
        child: Card(
          color: Colors.orange,
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: []),
          ),
        ),
      ),
      Container(
          margin: EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: Text('Anasayfaya Dön.'),
          )),
    ]));
  }
}
