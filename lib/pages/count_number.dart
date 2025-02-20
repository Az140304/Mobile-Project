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
    List<int> digits = number.toString().split('').map(int.parse).toList();
    
    Map<int, int> countMap = {};
    for (int eachNumber in digits) {
      countMap[eachNumber] = (countMap[eachNumber] ?? 0) + 1;
    }

    int total=0;
    for (int eachNumber in digits){
      total+=eachNumber;
    }

    String summary = "";
    countMap.forEach((key, value) {
      summary += 'Angka $key muncul sebanyak $value kali\n';
    });
    summary += "Banyak Angka Keseluruhan : ${digits.length}\n";
    summary += "Jumlah Angka Keseluruhan : $total\n";
    setState(() {
      _summary = summary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Input Number", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Masukkan angka"),
            ),
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
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).primaryColor, // Warna sesuai tema utama
                foregroundColor: Colors.white, // Warna teks
              ),
              child: Text("Hitung"),
            ),
            SizedBox(height: 15),
            Text("Summary of Chosen Number:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(_summary, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
      )
      
      
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Count Number', style: TextStyle(fontWeight: FontWeight.bold)),
      centerTitle: true,
    );
  }
}