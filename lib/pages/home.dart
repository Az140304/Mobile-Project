import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                child: Text("Feature Menu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18 ),),
              )
            ]
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: menu(),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text("Developed By", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: author(),
          ),
        ],
      ),
    );
  }

  AppBar appBar(){
    return AppBar(
      title: Text('Mobile Task', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
    );
  }

  Row menu(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
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
                        borderRadius: BorderRadius.circular(12), // Membuat sudut melengkung
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
                        borderRadius: BorderRadius.circular(12), // Pastikan gambar ikut melengkung
                        child: Image.asset("assets/icons/oddeven.png", fit: BoxFit.scaleDown),
                      ),
                    ),
                    Text('Ganjil Genap')
                  ],
                ),
              ),
              
              
              GestureDetector(
                onTap: (){
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
                        borderRadius: BorderRadius.circular(12), // Membuat sudut melengkung
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
                        borderRadius: BorderRadius.circular(12), // Pastikan gambar ikut melengkung
                        child: Image.asset("assets/icons/oddeven.png", fit: BoxFit.scaleDown),
                      ),
                    ),
                    Text('Ganjil Genap')
                  ],
                ),
              ),
              
              GestureDetector(
                onTap: (){
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
                        borderRadius: BorderRadius.circular(12), // Membuat sudut melengkung
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
                        borderRadius: BorderRadius.circular(12), // Pastikan gambar ikut melengkung
                        child: Image.asset("assets/icons/oddeven.png", fit: BoxFit.scaleDown),
                      ),
                    ),
                    Text('Ganjil Genap')
                  ],
                ),
              ),
            ]
    );
  }

  Row author(){
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
                  color: Colors.white, // Warna latar belakang
                  borderRadius: BorderRadius.circular(12), // Membuat sudut melengkung
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
                  borderRadius: BorderRadius.circular(12), // Pastikan gambar ikut melengkung
                  child: Image.asset("assets/icons/human1.jpg", fit: BoxFit.scaleDown),
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
                  color: Colors.white, // Warna latar belakang
                  borderRadius: BorderRadius.circular(12), // Membuat sudut melengkung
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
                  borderRadius: BorderRadius.circular(12), // Pastikan gambar ikut melengkung
                  child: Image.asset("assets/icons/human2.jpg", fit: BoxFit.scaleDown),
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
                  color: Colors.white, // Warna latar belakang
                  borderRadius: BorderRadius.circular(12), // Membuat sudut melengkung
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
                  borderRadius: BorderRadius.circular(12), // Pastikan gambar ikut melengkung
                  child: Image.asset("assets/icons/human3.jpg", fit: BoxFit.scaleDown),
                ),
              ),
              Text('ReFaiza Septa'),
              Text('123220000')
                ],
              ),
            ]
    );
  }
}