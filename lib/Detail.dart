import 'package:flutter/material.dart';

class Detail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            Center(
              child: Image.asset("assets/image/pas photo alpat.jpg",
                  height: 200,
                  width: 200),
            ),
            SizedBox(height: 20),
            Center(
              child: Text("Nama : Alfath Hudal Hakim"),

            ),
            Center(
                child: Text("Nim : 123200045")
            ),
            Center(
                child: Text("Kelas : Teknologi Pemograman Mobile IF-D")
            ),
            Center(
                child: Text("Tempat Tanggal Lahir : Sungai Penuh, 24 November 2001")
            ),
            Center(
                child: Text("Harapan Kedepannya : Front End Developer yang suses (aamin)")
            )

          ],

        ),
      ),
    );
  }

}