import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Test saja untuk pindah Page", home: Page1()));
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hallo Gaes")),
        body: Column(
          children: [
            Text("Ini adalah Biodata Saya"),
            Text("Hallo salam kenal Saya Mutiara salmi klik timbol di bawah untuk informasi biodata saya"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: Text("Ke Halaman 2"),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Biodata")),
        body: Column(
          children: [
            Text("Ini adalah Biodata saya"),
            Text("Nama : Mutiara Salmi"),
            Text("Npm : 2314370263"),
            Text("Program Studi : Sistem Komputer"),
            Text("Semester : 4"),
            Text("Nomor Hp : 082125184083"),
            Text("Alamat : Jalan garuda"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali Ke Halaman 1"),
            ),
          ],
        ),
      ),
    );
  }
}
