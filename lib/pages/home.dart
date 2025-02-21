import 'package:first_project/pages/tambah_kurang.dart';
import 'package:first_project/pages/ganjil_genap.dart';
import 'package:first_project/pages/count_number.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Text(
                  "Feature Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: menu(context),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              "Developed By",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: author(),
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Mobile Task',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }

  Row menu(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TambahKurang()),
            );
            print("Container dan teks diklik!");
          },
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset("assets/icons/oddeven.png",
                      fit: BoxFit.scaleDown),
                ),
              ),
              Text('Tambah Kurang')
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GanjilGenap()),
            );
            print("Container dan teks diklik!");
          },
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset("assets/icons/oddeven.png",
                      fit: BoxFit.scaleDown),
                ),
              ),
              Text('Ganjil Genap')
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CountNumber()),
            );
            print("Container dan teks diklik!");
          },
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      spreadRadius: 2,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset("assets/icons/oddeven.png",
                      fit: BoxFit.scaleDown),
                ),
              ),
              Text('Count Number')
            ],
          ),
        ),
      ],
    );
  }

  Row author() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset("assets/icons/human1.jpg",
                    fit: BoxFit.scaleDown),
              ),
            ),
            Text('Veri Anggoro W'),
            Text('123220000')
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset("assets/icons/human2.jpg",
                    fit: BoxFit.scaleDown),
              ),
            ),
            Text('Azhar Fikri A'),
            Text('123220000')
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset("assets/icons/human3.jpg",
                    fit: BoxFit.scaleDown),
              ),
            ),
            Text('Re Faiza Depta P'),
            Text('123220050')
          ],
        ),
      ],
    );
  }
}