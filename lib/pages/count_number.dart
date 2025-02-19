import 'package:flutter/material.dart';

class CountNumber extends StatefulWidget {
  const CountNumber({super.key});

  @override
  _CountNumberState createState() => _CountNumberState();
}

class _CountNumberState extends State<CountNumber> {
  final TextEditingController _controller = TextEditingController();
  String _summary = "";

  void countNumber(int number) {
    List<int> digits = number.toString().padLeft(5, '0').split('').map(int.parse).toList();
    
    Map<int, int> countMap = {};
    for (int eachNumber in digits) {
      countMap[eachNumber] = (countMap[eachNumber] ?? 0) + 1;
    }

    String summary = "";
    countMap.forEach((key, value) {
      summary += 'Angka $key muncul sebanyak $value kali\n';
    });
    summary += "Jumlah Angka Keseluruhan : ${digits.length}\n";

    setState(() {
      _summary = summary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Input Number", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            RoundedTextField(controller: _controller),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                int? number = int.tryParse(_controller.text);
                if (number != null) {
                  countNumber(number);
                } else {
                  setState(() {
                    _summary = "Masukkan angka yang valid!";
                  });
                }
              },
              child: Text("Hitung"),
            ),
            SizedBox(height: 15),
            Text("Summary of Chosen Number:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(_summary, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Count Number', style: TextStyle(fontWeight: FontWeight.bold)),
      centerTitle: true,
    );
  }
}

class RoundedTextField extends StatelessWidget {
  final TextEditingController controller;
  
  RoundedTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: "Enter Number...",
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}