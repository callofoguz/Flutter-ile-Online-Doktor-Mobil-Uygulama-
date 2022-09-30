import 'package:doctor_app/DoktorBilgisi.dart';
import 'package:doctor_app/DoktorBilgisi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:doctor_app/main_page.dart';
import 'colorScheme.dart';

import 'dart:math';
import 'package:flutter/foundation.dart';

class doktorlarPage extends StatelessWidget {
  const doktorlarPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: doktorlarAlani(),
      routes: {
        '/DoktorBilgisi': (context) => DoktorBilgisi(),
      },
    );
  }
}

class doktorlarAlani extends StatefulWidget {
  const doktorlarAlani({Key? key}) : super(key: key);

  @override
  State<doktorlarAlani> createState() => _doktorlarAlaniState();
}

class _doktorlarAlaniState extends State<doktorlarAlani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CustomPaint(painter: pathPainter()),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                actions: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [getStartedColorStart, getStartedColorEnd],
                            stops: [0, 1])),
                    child: Center(
                        child: Text(
                      "C",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 14, right: 10, top: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Alanında Uzman Doktorlar',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Text(
                      'Randevu bilgileri için doktorun üzerine basılı tutun.  ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 400,
                      width: 400,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            createDocWidget(
                                "manDoc.png",
                                "Prof. Dr. Serhat Özkan ",
                                "Eskişehir Osmangazi Üniversitesi Eğitim Araştırma Hastanesi"),
                            createDocWidget(
                                "womenDoc.png",
                                "Uzm. Dr. Fazilet Erözgen",
                                "İstanbul Haseki Eğitim Araştırma Hastanesi"),
                            createDocWidget(
                                "manDoc.png",
                                "Prof. Dr. Cezmi AKKIN",
                                "İzmir Ege Üniversitesi Hastanesi"),
                            createDocWidget(
                                "manDoc.png",
                                "Prof. Dr. Kudret Aydemir",
                                "Hacettepe Tıp Fakültesi"),
                            createDocWidget(
                                "ismailDoc.png",
                                "Prof.Dr. İsmail ÇEPNİ",
                                "İstanbul Cerrahpaşa Tıp Fakültesi"),
                            createDocWidget(
                                "womenDoc.png",
                                "Op. Dr. Ebru Aypar",
                                "Hacettepe Tıp Fakültesi"),
                            createDocWidget(
                                "womenDoc.png",
                                "Prof. Dr. Bilge Çelebioğlu",
                                "Hacettepe Tıp Fakültesi"),
                            createDocWidget(
                                "oguzDoc.jpeg",
                                "Op. Dr. Oğuzhan Kıyar",
                                "Afyon Devlet Hastanesi"),
                          ],
                        ),
                      ),
                    ),
                    // Geri Butunou
                    // Container(
                    //     margin: EdgeInsets.all(5),
                    //     color: Colors.blue,
                    //     child: ElevatedButton(
                    //       onPressed: () {
                    //         Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) => const HomePage()),
                    //         );
                    //       },
                    //       child: Text('Anasayfaya Dön.'),
                    //     )),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }

  // createDocWidget -------------
  Container createDocWidget(String imgName, String docName, String metin) {
    return Container(
      child: InkWell(
        child: Container(
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: docContentBgColor,
            ),
            child: Container(
              padding: EdgeInsets.all(7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/$imgName'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$docName",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 250,
                        height: 50,
                        child: Text(
                          "$metin",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      )
                    ],
                  ))
                ],
              ),
            )),
        onLongPress: opendoktorBilgisi,
      ),
    );
  }

  void opendoktorBilgisi() {
    Navigator.pushNamed(context, '/DoktorBilgisi');
  }
}

class pathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint();
    paint.color = path2Color;

    Path path = new Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.3, 0);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.03,
        size.width * 0.42, size.height * 0.17);
    path.quadraticBezierTo(
        size.width * 0.35, size.height * 0.32, 0, size.height * 0.1);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}



















// class asiTakvimi extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         child: Column(children: <Widget>[
//       Container(
//         width: 450,
//         child: Card(
//           color: Colors.orange,
//           elevation: 10,
//           child: Padding(
//             padding: EdgeInsets.all(20),
//             child: Column(children: []),
//           ),
//         ),
//       ),
//       Container(
//           margin: EdgeInsets.all(5),
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const HomePage()),
//               );
//             },
//             child: Text('Anasayfaya Dön.'),
//           )),
//     ]));
//   }
// }
