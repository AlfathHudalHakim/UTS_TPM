import 'package:flutter/material.dart';
import 'daftar.dart';
import 'bangundatar.dart';
import 'kalender.dart';
import 'main.dart';

class AfterLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Login()
                  )
              );
              SnackBar snackBar = const SnackBar(
                duration: Duration(seconds: 2),
                content: Text(
                  'Logout berhasil',
                ),
                backgroundColor:  Colors.green,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child:  Icon(Icons.logout_outlined,
              size: 38,) ,
          ),
          SizedBox(width: 20,)

        ],
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
              SizedBox(width: 35),
              SizedBox(
                height: 80,
                width: 100,
                child:
                ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => Daftar());
                      Navigator.push(context, route);
                    }
                    , child: Text("Profil"),
                ),
              ),

              SizedBox(width: 20),
              SizedBox(
                height: 80,
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => BangunDatar());
                      Navigator.push(context, route);
                    }
                    , child: Text("Bangun Datar")),
              ),
              SizedBox(width: 20),
              SizedBox(
                height: 80,
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => Kalender());
                      Navigator.push(context, route);
                    }
                    , child: Text("Kalender")),
              ),

            ],
          ),
      ],
        ),
      ),
    );
  }

}