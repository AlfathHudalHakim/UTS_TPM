import 'package:flutter/material.dart';
import 'dart:math';

class Trapesium extends StatefulWidget{
  @override
  _TrapesiumState createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  int a=0;
  int b=0;
  int c=0;
  double d=0;
  double kali=0;
  double miring=0;
  double hasil=0;

  void keliling() {
    setState(() {
      d = (b-a)/2;
      kali = (d*d)+(c*c);
      miring = sqrt(kali);
      hasil = a + b + miring + miring;
    });
  }

  void luas(){
    setState(() {
      hasil= ((a + b)*c)/2;
    });
  }
  @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Hitung Trapesium'),
    ),
    body: SafeArea(
    child: ListView(
    children: [
      Center(
        child: Image.network("https://images.vexels.com/media/users/3/139370/isolated/preview/46c9baa41ab004bfb2052cc4ff793100-trapezoid-shape-stroke-by-vexels.png",
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
        labelText: 'Sisi Atas ~dalam cm',
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
        labelText: 'Sisi Bawah ~dalam cm',
        border: OutlineInputBorder(),
      ),
    ),

    ),
      SizedBox(height: 20),
      Center(
        child: TextFormField(
          onChanged: (txt){
            setState(() {
              c = int.parse(txt);
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
                onPressed: keliling
                , child: Text("Keliling")),
          ),

          SizedBox(width: 20),
          SizedBox(
            height: 80,
            width: 100,
            child: ElevatedButton(
                onPressed: luas
                , child: Text("Luas")),
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

