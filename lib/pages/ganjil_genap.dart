import 'package:flutter/material.dart';

class GanjilGenap extends StatefulWidget {
  const GanjilGenap({super.key});

  @override
  State<GanjilGenap> createState() => _GanjilGenapState();
}

class _GanjilGenapState extends State<GanjilGenap> {
  final TextEditingController _numController = TextEditingController();
  String _oddEvenResult = "";

  void _cekGanjilGenap() {
    int? number = int.tryParse(_numController.text);
    if (number == null) {
      setState(() {
        _oddEvenResult = "Masukkan bilangan bulat yang valid!";
      });
      return;
    }

    String type = (number % 2 == 0) ? "genap" : "ganjil";

    setState(() {
      _oddEvenResult = "$number adalah angka $type";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:
      //       Text('Ganjil Genap', style: TextStyle(fontWeight: FontWeight.bold)),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _numController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Masukkan angka"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _cekGanjilGenap,
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).primaryColor, // Warna sesuai tema utama
                foregroundColor: Colors.white, // Warna teks
              ),
              child: Text("Cek"),
            ),
            SizedBox(height: 20),
            Text(
              _oddEvenResult,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
