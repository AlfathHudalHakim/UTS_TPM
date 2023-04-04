import 'package:flutter/material.dart';
import 'dart:math';

class Tabung extends StatefulWidget{
  @override
  _TabungState createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  int a=0;
  int b=0;
  double hasil=0;

  void Volume() {
    setState(() {
      hasil = 3.14*a*a*b/1;
    });
  }

  void luasP(){
    setState(() {
      hasil= 2*3.14*a*(a+b);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Tabung'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Image.network("https://4.bp.blogspot.com/-f2LaHHLhFVM/Wq2b-6M3tWI/AAAAAAAADpY/DnenlRhOdJwkOzF9dXNrL8OP6wdgA19rwCLcBGAs/s1600/tabung.png",
                  height: 200,
                  width: 200),
            ),
            SizedBox(height: 20),
            Center(
              child: TextFormField(
                onChanged: (txt){
                  setState(() {
                    a = int.parse(txt);
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Jari - Jari ~dalam cm',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextFormField(
                onChanged: (txt){
                  setState(() {
                    b = int.parse(txt);
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Tinggi ~dalam cm',
                  border: OutlineInputBorder(),
                ),
              ),

            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 100),
                SizedBox(
                  height: 80,
                  width: 100,
                  child:
                  ElevatedButton(
                      onPressed: Volume
                      , child: Text("Volume")),
                ),

                SizedBox(width: 20),
                SizedBox(
                  height: 80,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: luasP
                      , child: Text("Luas Permukaan")),
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: SizedBox(
                height: 180,
                child: Text("$hasil cm",
                  style: TextStyle(
                      fontSize: 50
                  ),),
              ),
            )


          ],

        ),
      ),
    );
  }
}