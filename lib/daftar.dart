import 'package:flutter/material.dart';
import 'Detail.dart';

class Daftar extends StatelessWidget{
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
            SizedBox(
              height: 80,
              width: 100,
              child: TextButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => Detail());
                    Navigator.push(context, route);
                  }
                  , child: Text("Detail")),
            ),


          ],

        ),
      ),
    );
  }

}