import 'package:doctor_app/login_page.dart';
import 'package:doctor_app/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController userIDController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();

  kayitOl() {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userIDController.text, password: userPasswordController.text);
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
                    SizedBox(height: 10.0),
                    Text(
                      ("Kayıt Olmak için E-mail ve Parola Oluşturun."),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 70.0),
                    Center(
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
                            width: 250.0,
                            height: 50,
                            child: ElevatedButton(
                                child: Text("Kayıt ol"),
                                onPressed: () {
                                  kayitOl();
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
                            width: 300.0,
                            height: 50,
                            child: ElevatedButton(
                                child: Text("Giriş Ekranına Dön"),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()),
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
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
