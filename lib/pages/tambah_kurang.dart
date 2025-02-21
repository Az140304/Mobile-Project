import 'package:flutter/material.dart';

class TambahKurang extends StatefulWidget {
  const TambahKurang({super.key});

  @override
  State<TambahKurang> createState() => _TambahKurangState();
}

class _TambahKurangState extends State<TambahKurang> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _selectedOperation = "+";
  String _result = "";

  void _calculate() {
    if (_num1Controller.text.isEmpty || _num2Controller.text.isEmpty) {
      setState(() {
        _result = "Masukkan kedua angka terlebih dahulu!";
      });
      return;
    }
    
    num num1 = num.tryParse(_num1Controller.text.replaceAll(',', '.')) ?? 0; // ganti inputan koma dengan
    num num2 = num.tryParse(_num2Controller.text.replaceAll(',', '.')) ?? 0;
    num result;

    if (_selectedOperation == "+") {
      result = num1 + num2;
    } else {
      result = num1 - num2;
    }

    setState(() {
      _result = "Hasil dari $num1 $_selectedOperation $num2 = $result";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Tambah Kurang',
      //       style: TextStyle(fontWeight: FontWeight.bold)),
      //   centerTitle: true,
      // ),
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
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 40),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Warna latar belakang lembut
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey), // Border tipis
              ),
              child: Text(
                "Catatan: tanda koma (,) dan titik (.) akan dianggap sebagai desimal",
                style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
