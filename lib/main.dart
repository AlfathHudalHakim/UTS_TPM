import 'package:flutter/material.dart';
import 'afterlogin.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'UTS TPM',
    theme: ThemeData(
      primarySwatch: Colors.blueGrey
    ),
    home: Login(),
  ));
}

TextEditingController getUsername = new TextEditingController();
TextEditingController getPassword = new TextEditingController();

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 40),
            Center(
              child: Image.asset("assets/image/logo.png",
                  height: 200,
                  width: 200),
            ),
            SizedBox(height: 60),
            TextFormField(
              controller: getUsername,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.account_circle_outlined,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: getPassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.assignment,
                ),
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
                onPressed: () {
                  String email = '123200045';
                  String password = 'alfath';
                  if(getUsername.text == email && getPassword.text == password){
                    Route route = MaterialPageRoute(builder: (context) => AfterLogin());
                    Navigator.push(context, route);
                  }
                  else{
                    final snackBar = SnackBar(
                      duration: const Duration(seconds: 5),
                      content: Text("Email atau password salah!"),
                      backgroundColor: Colors.red,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                }
                , child: Text("Login"))
          ],
        ),
      ),
    );
  }

}