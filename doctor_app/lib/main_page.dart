import 'package:doctor_app/asi_bilgilendirme.dart';
import 'package:doctor_app/bmideneme.dart';
import 'package:doctor_app/doktor_tavsiyesi.dart';
import 'package:doctor_app/doktorlar.dart';
import 'package:doctor_app/hastalik_belirti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'colorScheme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Text(
                  "Online Doktor",
                  style: TextStyle(color: Colors.black),
                ),
                elevation: 0,
                centerTitle: true,
                leading: IconButton(
                    // Ana sayfa Sol Çizgi Menüsü Butonu
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const doktortavsiyesi()),
                      );
                    },
                    // ana sayfa sol üst çizgi oluşturma
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    )),
                // Sağ üst kullanıcı fotosu
                actions: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [path2Color, Colors.orange],
                            stops: [0, 1])),
                    child: Center(
                        child: Text(
                      "O",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  )
                ],
              ),
              // ignore: unnecessary_new
              body: new LayoutBuilder(
                builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 30, bottom: 30, left: 30.0, right: 0.0),
                              child: Container(
                                child: Wrap(
                                  children: [
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border:
                                              Border.all(color: Colors.black),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/report.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "Hastalıklar Ve Belirtiler",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HastalikBelirti()),
                                        );
                                      },
                                    ),
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/body-mass.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "Vücut Kitle Endeksi",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const bmiPage()),
                                        );
                                      },
                                    ),
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/alanındauzmandoktorlar.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "Alanında Uzman Doktorlar",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const doktorlarPage()),
                                        );
                                      },
                                    ),
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/advice.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "Doktor Tavsiyesi",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        // showAlertDialog(BuildContext context) {
                                        //   // set up the button
                                        //   Widget okButton = TextButton(
                                        //     child: Text("OK"),
                                        //     onPressed: () {},
                                        //   );

                                        //   // set up the AlertDialog
                                        //   AlertDialog alert = AlertDialog(
                                        //     title: Text("My title"),
                                        //     content:
                                        //         Text("This is my message."),
                                        //     actions: [
                                        //       okButton,
                                        //     ],
                                        //   );

                                        //   // show the dialog
                                        //   showDialog(
                                        //     context: context,
                                        //     builder: (BuildContext context) {
                                        //       return alert;
                                        //     },
                                        //   );
                                        // }

                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           const doktortavsiyesi()),
                                        // );
                                        showAlertDialog(context);
                                      },
                                    ),
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/vademecum.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "Vademecum",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/syringe.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "En Yakın Sağlık Kuruluşu",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const asibilgilendirme()),
                                        );
                                      },
                                    ),
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/test-tube.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "Covid-19 Tespit",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/mortar.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "Alternatif Tıp",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/exercise.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "Günlük EGZERSİZ",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                    CupertinoButton(
                                      child: Container(
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/settings.png"),
                                            //fit: BoxFit.cover,
                                            scale: 7,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(15, 15, 0, 0),
                                          child: Text(
                                            "Kullanıcı İşlemleri",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  );
                },
              )),
        ));
  }
}

// DOktor TAvsiyesi Alert Dialogu -----
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
    title: Text("Doktorun Tavsiyesi:"),
    content: Text("Alkol ve Sigaradan Uzak Durun."),
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
