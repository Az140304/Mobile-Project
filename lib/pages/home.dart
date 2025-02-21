import 'package:first_project/pages/count_number.dart';
import 'package:first_project/pages/ganjil_genap.dart';
import 'package:first_project/pages/tambah_kurang.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.text});

  final String text;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //LoginPage({Key key, required this.text}) : super(key: key);
  late List<Widget> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomeBody(text: widget.text), // Kirim text ke HomeBody
      TambahKurang(),
      GanjilGenap(),
      CountNumber(),
    ];
  }

  final List<String> _titles = <String>[
    'Home',
    'Tambah Kurang',
    'Ganjil Genap',
    'Hitung Digit',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.add_circle_outline_rounded), label: 'Tambah Kurang'),
          NavigationDestination(icon: Icon(Icons.filter_1), label: 'Ganjil Genap'),
          NavigationDestination(icon: Icon(Icons.numbers), label: 'Hitung DIgit'),
        ]
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        _titles[_selectedIndex],
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }

  Row menu(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                color: Colors.white, // Warna latar belakang
                borderRadius:
                    BorderRadius.circular(12), // Membuat sudut melengkung
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Warna shadow dengan transparansi
                    blurRadius: 8, // Membuat shadow lebih halus
                    spreadRadius: 2, // Menyebarkan shadow
                    offset: Offset(4, 4), // Posisi shadow (X, Y)
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    12), // Pastikan gambar ikut melengkung
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
                color: Colors.white, // Warna latar belakang
                borderRadius:
                    BorderRadius.circular(12), // Membuat sudut melengkung
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Warna shadow dengan transparansi
                    blurRadius: 8, // Membuat shadow lebih halus
                    spreadRadius: 2, // Menyebarkan shadow
                    offset: Offset(4, 4), // Posisi shadow (X, Y)
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    12), // Pastikan gambar ikut melengkung
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
                color: Colors.white, // Warna latar belakang
                borderRadius:
                    BorderRadius.circular(12), // Membuat sudut melengkung
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Warna shadow dengan transparansi
                    blurRadius: 8, // Membuat shadow lebih halus
                    spreadRadius: 2, // Menyebarkan shadow
                    offset: Offset(4, 4), // Posisi shadow (X, Y)
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    12), // Pastikan gambar ikut melengkung
                child: Image.asset("assets/icons/oddeven.png",
                    fit: BoxFit.scaleDown),
              ),
            ),
            Text('Count Number')
          ],
        ),
      ),
    ]);
  }
}

class HomeBody extends StatelessWidget {
  final String text;

  HomeBody({required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Container(
        //       margin: EdgeInsets.only(top: 20),
        //       alignment: Alignment.center,
        //       child: Text(
        //         "Feature Menu",
        //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        //       ),
        //     )
        //   ],
        // ),
        // Padding(
        //   padding: EdgeInsets.only(top: 10),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       GestureDetector(
        //         onTap: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context) => TambahKurang()));
        //         },
        //         child: menuItem("assets/icons/oddeven.png", "Tambah Kurang"),
        //       ),
        //       GestureDetector(
        //         onTap: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context) => GanjilGenap()));
        //         },
        //         child: menuItem("assets/icons/oddeven.png", "Ganjil Genap"),
        //       ),
        //       GestureDetector(
        //         onTap: () {
        //           Navigator.push(context, MaterialPageRoute(builder: (context) => CountNumber()));
        //         },
        //         child: menuItem("assets/icons/oddeven.png", "Count Number"),
        //       ),
        //     ],
        //   ),
        // ),
      
        Container(
          margin: EdgeInsets.only(left: 50, top: 50),
          child: Row(
            children: [
              Image.asset(
                  'assets/icons/man.png',
                  width: 100.0,
                ),
                SizedBox(width: 20,),
              Text(
                "Selamat Datang, $text!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ) 
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            "Developed By",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              authorItem("assets/icons/human1.jpg", "Veri Anggoro W", "123220146"),
              authorItem("assets/icons/human2.jpg", "Azhar Fikri H", "123220042"),
              authorItem("assets/icons/human3.jpg", "Re Faiza Depta P", "123220050"),
            ],
          ),
        ),
      ],
    );
  }

  // Widget menuItem(String imagePath, String title) {
  //   return Column(
  //     children: [
  //       Container(
  //         margin: EdgeInsets.all(10),
  //         height: 100,
  //         width: 100,
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.circular(12),
  //           boxShadow: [
  //             BoxShadow(
  //               color: Colors.black26,
  //               blurRadius: 8,
  //               spreadRadius: 2,
  //               offset: Offset(4, 4),
  //             ),
  //           ],
  //         ),
  //         child: ClipRRect(
  //           borderRadius: BorderRadius.circular(12),
  //           child: Image.asset(imagePath, fit: BoxFit.scaleDown),
  //         ),
  //       ),
  //       Text(title)
  //     ],
  //   );
  // }

  Widget authorItem(String imagePath, String name, String id) {
    return Column(
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
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
        ),
        Text(name),
        Text(id),
      ],
    );
  }
}