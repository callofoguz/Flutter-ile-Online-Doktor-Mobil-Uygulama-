import 'package:doctor_app/hastalik_oneri.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'data.dart';

class HastalikBelirti extends StatefulWidget {
  const HastalikBelirti({Key? key}) : super(key: key);

  @override
  State<HastalikBelirti> createState() => _HastalikBelirtiState();
}

class _HastalikBelirtiState extends State<HastalikBelirti> {
  bool isSelectionMode = false;
  List<Map> staticData = MyData.data;
  Map<int, bool> selectedFlag = {};
  List<String> TotalBelirti = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'Belirti Seçiniz',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemBuilder: (builder, index) {
          Map data = staticData[index];
          selectedFlag[index] = selectedFlag[index] ?? false;
          bool? isSelected = selectedFlag[index];

          return ListTile(
            onLongPress: () => onLongPress(isSelected!, index),
            onTap: () => onTap(isSelected!, index),
            title: Text("${data['name']}"),
            leading: _buildSelectIcon(isSelected!, data),
          );
        },
        itemCount: staticData.length,
      ),
      floatingActionButton: _buildSelectAllButton(),
    );
  }

  void onTap(bool isSelected, int index) {
    if (isSelectionMode) {
      setState(() {
        selectedFlag[index] = !isSelected;
        isSelectionMode = selectedFlag.containsValue(true);
      });
    } else {}
  }

  void onLongPress(bool isSelected, int index) {
    setState(() {
      selectedFlag[index] = !isSelected;
      isSelectionMode = selectedFlag.containsValue(true);
    });
  }

  Widget _buildSelectIcon(bool isSelected, Map data) {
    if (isSelectionMode) {
      return Icon(
        isSelected ? Icons.check_box : Icons.check_box_outline_blank,
        color: Colors.black,
      );
    } else {
      return CircleAvatar(
        backgroundColor: Colors.black,
        child: Text(
          '${data['id']}',
          style: TextStyle(color: Colors.white),
        ),
      );
    }
  }

  Widget? _buildSelectAllButton() {
    bool isFalseAvailable = selectedFlag.containsValue(false);
    if (isSelectionMode) {
      return FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: _selectedPrint,
        child: Icon(
          isFalseAvailable ? Icons.done_all : Icons.remove_done,
        ),
      );
    } else {
      return null;
    }
  }

  void _selectAll() {
    bool isFalseAvailable = selectedFlag.containsValue(false);

    selectedFlag.updateAll((key, value) => isFalseAvailable);
    setState(() {
      isSelectionMode = selectedFlag.containsValue(true);
    });
  }

  void _selectedPrint() {
    setState(() {
      for (int i = 0; i < 23; i++) {
        if (selectedFlag[i] == true) {
          // print(MyData.data[i]);
          TotalBelirti.add(MyData.data[i]["name"].toString());
        }
      }
      hastaliklarimiListele();
    });
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              HastalikOneri(TotalBelirtiSecondPage: TotalBelirti)),
    );
  }

  void hastaliklarimiListele() {
    for (int i = 0; i < TotalBelirti.length; i++) {
      print("BELİRTİ LİSTESİ:" + TotalBelirti[i]);
    }
  }
}
