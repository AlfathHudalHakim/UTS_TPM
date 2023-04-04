import 'package:flutter/material.dart';
import 'hitung.dart';
import 'hitung2.dart';

class BangunDatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Bangun Datar'),
      ),
      body: SafeArea(

        child: ListView(
          children: [
            SizedBox(height: 50),
            Center(
              child: Image.network("https://raw.githubusercontent.com/jhonarendra/BelajarGeometri/master/app/src/main/res/drawable/icon.png",
                  height: 200,
                  width: 200),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 100),
                SizedBox(
                  height: 80,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => Trapesium());
                        Navigator.push(context, route);
                      }
                      , child: Text("Trapesium")),
                ),
                SizedBox(width: 20),
                SizedBox(
                  height: 80,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => Tabung());
                        Navigator.push(context, route);
                      }
                      , child: Text("Tabung")),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

}