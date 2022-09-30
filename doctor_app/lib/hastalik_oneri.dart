import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'hastalik.dart';

class HastalikOneri extends StatefulWidget {
  // ignore: non_constant_identifier_names
  List<String> TotalBelirtiSecondPage;

// ignore: non_constant_identifier_names
  HastalikOneri({Key? key, required this.TotalBelirtiSecondPage})
      : super(key: key);

  @override
  State<HastalikOneri> createState() => _HastalikOneriState();
}

class _HastalikOneriState extends State<HastalikOneri> {
  @override
  Widget build(BuildContext context) {
    //final List<String> entries = <String>[];
    List<String> hastalikKontrol() {
      final List<String> HastalikList = <String>[];
      for (int i = 0; i < widget.TotalBelirtiSecondPage.length; i++) {
        if (widget.TotalBelirtiSecondPage[i] == "Akne") {
          HastalikList.add("Hormon Bozukluğu");
          HastalikList.add("Yorgunluk");
          HastalikList.add("Endokrin Sistem Bozukluğu");
          HastalikList.add("Böbreklerin Çalışma Düzensiliği");
          HastalikList.add("Yüksek Testesteron");
          HastalikList.add("Sigara Kullanımı");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Dil Şişmesi") {
          HastalikList.add("Anaflaksi");
        }

        if (widget.TotalBelirtiSecondPage[i] == "Baş Dönmesi") {
          HastalikList.add("Zattüre");
          HastalikList.add("Grip");
          HastalikList.add("Korona");
          HastalikList.add("Bağırsak Enfeksiyonu");
          HastalikList.add("Karaciğer İltihabı");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Kalp Sıkışması") {
          HastalikList.add("Astım Hastalığı");
          HastalikList.add("Kalp Yetersizliği");
          HastalikList.add("Oskijen Yetersizliği");
          HastalikList.add("Yemek Borusunda Reflü");
        }

        if (widget.TotalBelirtiSecondPage[i] == "Karın Ağrısı") {
          HastalikList.add("Regl");
          HastalikList.add("Apandisit");
          HastalikList.add("Mide Ülseri");
          HastalikList.add("Bağırsak Tıkanıklığı");
          HastalikList.add("Böbrek Taşı");
          HastalikList.add("Safra Kesesi İltihabı");
        }

        if (widget.TotalBelirtiSecondPage[i] == "Mide Bulantısı") {
          HastalikList.add("Hamilelik");
          HastalikList.add("Migren");
          HastalikList.add("Gastrit");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Sırtta Ağrı") {
          HastalikList.add("Aşırı Ruhsal Gerilim");
          HastalikList.add("Obezite");
          HastalikList.add("Kemik Bozuklukları");
          HastalikList.add("Omurga Hastalığı");
          HastalikList.add("Disk Kayması");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Eklemlerde Ağrı") {
          HastalikList.add("Kireçlenme");
          HastalikList.add("Avesküler Nekroz");
          HastalikList.add("Kemik Kanseri");
          HastalikList.add("Romatizmal Hastalıklar");
          HastalikList.add("Gut Hastalığı");
          HastalikList.add("Eklem İltihabı");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Retinada Tahriş") {
          HastalikList.add("Retina Yırtılması");
          HastalikList.add("Göz Kuruluğu");
          HastalikList.add("Alerjik Etkenler");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Baş Ağrısı") {
          HastalikList.add("Akut Sinüzüt");
          HastalikList.add("İyi/Kötü Beyin Tümörü");
          HastalikList.add("Hipertansiyon");
          HastalikList.add("Kafa Travmaları");
          HastalikList.add("Kulak Enfeksiyonları");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Bel Ağrısı") {
          HastalikList.add("Belin Zorlanması");
          HastalikList.add("Sinir Tahrişi");
          HastalikList.add("Tendon ve Kas Gerilmesi");
          HastalikList.add("Bel Fıtığı");
          HastalikList.add("Sakralizasyon");
          HastalikList.add("Travma");
          HastalikList.add("Lumbalizasyon");
          HastalikList.add("Lomber Lordoz Artışı");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Kulak Çınlaması") {
          HastalikList.add("Kulak İltihabı");
          HastalikList.add("Kulak Zarında Delik");
          HastalikList.add("İşitime Sinirinde Tümör");
          HastalikList.add("Orta Kulak Sıvısı Birikmesi");
          HastalikList.add("Orta Kulak İltihabı");
          HastalikList.add("Stres / Depresyon");
        }

        if (widget.TotalBelirtiSecondPage[i] == "Yanaklarda Kızarıklık") {
          HastalikList.add("Roza Hastalığı");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Uzuvlarda Uyuşma") {
          HastalikList.add("Multiple Skleroz (MS)");
          HastalikList.add("Periferik Arter Hastalığı");
          HastalikList.add("Fibromiyoloji");
          HastalikList.add("Alkol");
          HastalikList.add("Ensefalit");
          HastalikList.add("İnme");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Koku ve Tat Alamama") {
          HastalikList.add("Öksürük");
          HastalikList.add("Korona");
          HastalikList.add("Grip");
          HastalikList.add("Sinüs Enfeksiyonu");
          HastalikList.add("Yüz Felci");
          HastalikList.add("Diş Çürüğü");
          HastalikList.add("Uyuşturucu Kullanımı");
          HastalikList.add("Parkinson Hastalığı");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Mide Yanması") {
          HastalikList.add("Gastrit");
          HastalikList.add("Alkol");
          HastalikList.add("Hamilelik");
          HastalikList.add("Sarkoidos");
          HastalikList.add("Skleroderma");
          HastalikList.add("İlaç Yan Etkileri");
          HastalikList.add("Kirli Su Tüketmek");
          HastalikList.add("Peptik Ülser");
          HastalikList.add("Dispepsi");
        }
        if (widget.TotalBelirtiSecondPage[i] == "İshal") {
          HastalikList.add("Enfeksiyonlar");
          HastalikList.add("Çölyak Hastalığı");
          HastalikList.add("Laktoz İntorelansı");
          HastalikList.add("Kronik Pankreatit");
          HastalikList.add("Kolon Kanseri");
          HastalikList.add("Norwalk Virüsü");
          HastalikList.add("Viral Hepatit");
          HastalikList.add("Çocuklukta Akut");
          HastalikList.add("Rota Virüs");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Kanlı İdrar") {
          HastalikList.add("Böbrek Taşı");
          HastalikList.add("İdrar Yolu Enfeksiyonu");
          HastalikList.add("Prostat Büyümesi");
          HastalikList.add("Prostat Kanseri");
          HastalikList.add("Böbrek Kanseri");
          HastalikList.add("Mesane Kanseri");
          HastalikList.add("Ağır Egzersiz");
          HastalikList.add("Genetik Hastalıklar");
          HastalikList.add("Cinsel Hastalıklar");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Aşırı Duyarlılık") {
          HastalikList.add("SLE");
          HastalikList.add("Romotoid Artrit");
          HastalikList.add("Primer Sjögren Sendromu");
          HastalikList.add("Hashimoto Tiroiditi");
          HastalikList.add("Sistematik Skleroz");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Öksürük") {
          HastalikList.add("KOAH");
          HastalikList.add("Astım Hastalığı");
          HastalikList.add("Reflü");
          HastalikList.add("Mevsimsel Alerjiler");
          HastalikList.add("Akciğer Kanseri");
          HastalikList.add("Tüberküloz");
          HastalikList.add("Gastroözafagel Reflü");
          HastalikList.add("Üst Solunum Yolu Enfeksiyonları");
          HastalikList.add("Bronşit");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Halsizlik") {
          HastalikList.add("Depresyon");
          HastalikList.add("Anjina");
          HastalikList.add("Periferik Arter Hastalığı ");
          HastalikList.add("Diyabet");
          HastalikList.add("Uyku Apnesi");
          HastalikList.add("Kanser");
          HastalikList.add("Anemi");
          HastalikList.add("Hipotroidi");
          HastalikList.add("Hepatit");
        }

        if (widget.TotalBelirtiSecondPage[i] == "Terleme") {
          HastalikList.add("Hipertroidi");
          HastalikList.add("Diabet");
          HastalikList.add("Kalp Hastalığı");
          HastalikList.add("Ateş ve Enfeksiyonlar");
          HastalikList.add("Tüberküloz");
          HastalikList.add("C ve D vitamini Eksikliği");
          HastalikList.add("Hipoglisemi");
        }

        if (widget.TotalBelirtiSecondPage[i] == "Yüksek Ateş") {
          HastalikList.add("Zattüre");
          HastalikList.add("Grip");
          HastalikList.add("Korona");
          HastalikList.add("Bağırsak Enfeksiyonu");
          HastalikList.add("Karaciğer İltihabı");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Titreme") {
          HastalikList.add("Parkinson Hastalığı");
          HastalikList.add("Multiple Skleroz (MS)");
          HastalikList.add("Egzersiz Sonrası Yorgunluk");
          HastalikList.add("Stres");
          HastalikList.add("B 12 Vitamin Eksikliği");
          HastalikList.add("Kan Şekeri Düşüklüğü");
          HastalikList.add("Fazla Kafein Tüketimi");
          HastalikList.add("Heyecan, Korku, Öfke");
          HastalikList.add("Tremor");
        }
        if (widget.TotalBelirtiSecondPage[i] == "Göz Yanması") {
          HastalikList.add("Göz Kuruluğu");
          HastalikList.add("Göz Alerjisi");
          HastalikList.add("Konjontivit");
          HastalikList.add("Kornea Enfeksiyonu");
          HastalikList.add("Göz Tahrişi");
          HastalikList.add("Kirpik Dibi Hastalıkları");
          HastalikList.add("Göz Yorgunluğu");
          HastalikList.add("Fotofobi");
          HastalikList.add("Göz Nezlesi");
        }
      }
      List<String> result = LinkedHashSet<String>.from(HastalikList).toList();

      return result;
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Hastalık Tespit",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(30),
          itemCount: hastalikKontrol().length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.deepOrange,
              child: Center(
                  child: Text(
                hastalikKontrol()[index],
                style: TextStyle(color: Colors.white),
              )),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
