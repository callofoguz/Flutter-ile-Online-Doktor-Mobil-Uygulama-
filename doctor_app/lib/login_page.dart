import 'package:doctor_app/main_page.dart';
import 'package:doctor_app/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userIDController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();

  Future<void> girisYap() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: userIDController.text, password: userPasswordController.text)
        .then((kullanici) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    userIDController.dispose();
    userPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              children: [
                Column(
                  children: [
                    if (!isKeyboard)
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(0.0),
                                bottomRight: const Radius.circular(0.0),
                                topLeft: const Radius.circular(0),
                                topRight: const Radius.circular(0))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 70,
                            ),
                            // Image.asset(
                            //   "assets/images/heart-attack.png",
                            //   scale: 6,
                            // ),

                            Lottie.asset('assets/images/heartLottie.json',
                                width: 80, height: 80),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "ONLINE DOKTOR",
                              style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Container(
                    //   width: 300,
                    //   height: 30,
                    //   child: Column(
                    //     children: [
                    //       Text(
                    //         "Böyle Bir Kullanıcı Yok!",
                    //         style: TextStyle(
                    //             color: Colors.black,
                    //             letterSpacing: 2,
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.normal),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(height: 80.0),
                    Center(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: 330.0,
                            child: TextField(
                              controller: userIDController, //ID PARSER
                              obscureText: false,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                height: 0.8,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.mail,
                                  color: Colors.black,
                                ),
                                isCollapsed: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(47, 79, 79, 1)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0,
                                        color: Color.fromRGBO(47, 79, 79, 1)),
                                    borderRadius: BorderRadius.circular(10.0)),
                                hintText: "E-Mail",
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 40.0),
                          Container(
                            width: 330.0,
                            child: TextField(
                              controller:
                                  userPasswordController, //PASSWORD PARSER
                              obscureText: true,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.0,
                                height: 0.8,
                              ),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                isCollapsed: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      width: 0,
                                      color: Color.fromRGBO(47, 79, 79, 1)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(47, 79, 79, 1)),
                                    borderRadius: BorderRadius.circular(10.0)),
                                hintText: "Parola",
                                hintStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 40.0),
                          Container(
                            width: 200.0,
                            height: 50,
                            child: ElevatedButton(
                                child: Text("Giriş Yap"),
                                onPressed: () {
                                  girisYap();
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                    primary: Colors.red,
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black))),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            width: 250.0,
                            height: 50,
                            child: ElevatedButton(
                                child: Text("Kayıt Ol"),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                    primary: Colors.black,
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black))),
                          ),
                          SizedBox(height: 20.0),
//----------------------------------------------- ÜYELİKSİZ DEVAM ET BUTONU _______________________----

                          Container(
                            width: 300.0,
                            height: 50,
                            child: ElevatedButton(
                                child: Text("Üyeliksiz Devam Et"),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomePage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                    primary: Colors.red,
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.red))),
                          ),
                        ],
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
