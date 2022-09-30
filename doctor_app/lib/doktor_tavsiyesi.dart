import 'package:flutter/material.dart';

import 'package:doctor_app/bmideneme.dart';
import 'package:doctor_app/hastalik_belirti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:doctor_app/main_page.dart';

import 'dart:math';
import 'package:flutter/foundation.dart';

class doktortavsiyesi extends StatelessWidget {
  const doktortavsiyesi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Doktor Tavsiyesi',
// //       home: Scaffold(
// //           appBar: AppBar(
// //             title: Text('Doktor Tavsiyesi'),
// //           ),
// //           body: MyLayout()),
// //     );
// //   }
// // }

// // class MyLayout extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(120.0),
// //       child: ElevatedButton(
// //         child: Text('Tavsiye Göster'),
// //         onPressed: () {
// //           showAlertDialog(context) {
// //             // set up the button
// //             Widget okButton = TextButton(
// //               child: Text("OK"),
// //               onPressed: () {},
// //             );

// //             // set up the AlertDialog
// //             AlertDialog alert = AlertDialog(
// //               title: Text("My title"),
// //               content: Text("Sabahları Yumurta yiyin."),
// //               actions: [
// //                 okButton,
// //               ],
// //             );

// //             // show the dialog
// //             showDialog(
// //               context: context,
// //               builder: (BuildContext context) {
// //                 return alert;
// //               },
// //             );
// //           }
// //         },
// //       ),
// //     );
// //   }
// // }

// class MyApp extends StatelessWidget {

// // user defined function
//   void _showDialog() {
//     // flutter defined function
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         // return object of type Dialog
//         return AlertDialog(
//           title: new Text("Alert Dialog title"),
//           content: new Text("Alert Dialog body"),
//           actions: <Widget>[
//             // usually buttons at the bottom of the dialog
//             new FlatButton(
//               child: new Text("Close"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//  }

// ---- 09.06.2022

// @override
// Widget build(BuildContext context) {
//   return new WillPopScope(
//     onWillPop: () async => false,
//     child: new Scaffold(
//       appBar: new AppBar(
//         title: new Text("data"),
//         leading: new IconButton(
//           icon: new Icon(Icons.ac_unit),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Doktor Tavsiyesi';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyAlert(),
      ),
    );
  }
}

class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: <Widget>[
      Container(
        width: 450,
        child: Card(
          color: Colors.black,
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: []),
          ),
        ),
      ),
      // Container(
      //     margin: EdgeInsets.all(5),
      //     child: ElevatedButton(
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => const HomePage()),
      //         );
      //       },
      //       child: Text('Anasayfaya Dön.'),
      //     )),
      Container(
        child: ElevatedButton(
          child: Text('Doktorun Günlük Tavsiyesi'),
          onPressed: () {
            showAlertDialog(context);
          },
        ),
      )
    ]));
  }
}

// String generateRandomString(int length) {
//   final _random = Random();
//   const _availableChars =
//       'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
//   final randomString = List.generate(length,
//           (index) => _availableChars[_random.nextInt(_availableChars.length)])
//       .join();

//   return randomString;
// }

// void main() {
//   debugPrint(generateRandomString(10));
//   debugPrint(generateRandomString(20));
// }

// void main(List<String> args) {
//   var RastgeleSayi = Random().nextInt(5);
//   print(RastgeleSayi);
// }

String generateRandomString(int len) {
  var r = Random();
  const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
}

showAlertDialog(BuildContext context) {
  // button
  Widget okButton = ElevatedButton(
    child: Text("Anlaşıldı!"),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop('dialog');

      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomePage()),
      // );
    },
  );

  // alert dilogu olusturdum
  AlertDialog alert = AlertDialog(
    title: Text("Tavsiye:"),
    content: Text("Her sabah en az 1 yumurta yiyin :)"),
    actions: [
      okButton,
    ],
  );

  // dialogu göster
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
