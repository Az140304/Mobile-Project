import 'package:flutter/material.dart';

class TambahKurang extends StatefulWidget {
  const TambahKurang({super.key});

  @override
  _TambahKurangState createState() => _TambahKurangState();
}

class _TambahKurangState extends State<TambahKurang> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _selectedOperation = "+";
  String _result = "";

  void _calculate() {
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;
    double result;

    if (_selectedOperation == "+") {
      result = num1 + num2;
    } else {
      result = num1 - num2;
    }

    setState(() {
      _result = "Hasil: $result";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Kurang',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _num1Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Masukkan angka a"),
                  ),
                ),
                SizedBox(width: 10),
                DropdownButton<String>(
                  value: _selectedOperation,
                  items: ["+", "-"].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedOperation = value!;
                    });
                  },
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: _num2Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Masukkan angka b"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculate,
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).primaryColor, // Warna sesuai tema utama
                foregroundColor: Colors.white, // Warna teks
              ),
              child: Text("Hitung"),
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
