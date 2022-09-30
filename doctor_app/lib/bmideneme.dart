import 'package:flutter/material.dart';

import 'package:doctor_app/bmideneme.dart';
import 'package:doctor_app/hastalik_belirti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:doctor_app/main_page.dart';

class bmiPage extends StatelessWidget {
  const bmiPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmiHesaplama(),
    );
  }
}

class bmiHesaplama extends StatefulWidget {
  @override
  _bmiHesaplamaState createState() => _bmiHesaplamaState();
}

class _bmiHesaplamaState extends State<bmiHesaplama> {
  final _heightController = TextEditingController();

  final _weightController = TextEditingController();

  double? _bmi;

  // Bastaki mesaj
  String _message = 'Lütfen boyunuzu ve kilonuzu yukarıya giriniz.';

  void _calculate() {
    final double? boy = double.tryParse(_heightController.value.text);
    final double? kilo = double.tryParse(_weightController.value.text);

    // Baştaki girilen verielr doğru mu
    if (boy == null || boy <= 0 || kilo == null || kilo <= 0) {
      setState(() {
        _message = "Boy ve kilo 0'ın altında bir sayı olamaz.";
      });
      return;
    }

// Vücut kitle endeksi ölcüleri.

    setState(() {
      _bmi = kilo / (boy * boy);
      if (_bmi! < 18.5) {
        _message = "Zayıfsınız!";
      } else if (_bmi! < 25) {
        _message = 'Gayet Sağlıklısınız!';
      } else if (_bmi! < 30) {
        _message = 'Fazla Kilolusunuz!';
      } else {
        _message = '1. Derece Obezsiniz!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrange,
        body: Center(
          child: Container(
            width: 320,
            child: Card(
              color: Colors.white,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(labelText: 'Boy (m)'),
                      controller: _heightController,
                    ),
                    TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        labelText: 'Kilo (kg)',
                      ),
                      controller: _weightController,
                    ),
                    ElevatedButton(
                      onPressed: _calculate,
                      child: Text('Hesapla'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        _bmi == null ? 'Sonuç Yok' : _bmi!.toStringAsFixed(2),
                        style: TextStyle(fontSize: 50),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        _message,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    CupertinoButton(
                      child: Container(
                        height: 40,
                        width: 50,
                        color: Colors.deepOrange,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            "Geri",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
