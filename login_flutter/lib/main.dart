import 'package:flutter/material.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Mobile',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child : Text ('Login Aplikasi' , style: TextStyle(fontSize: 40,)))),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Silahkan login untuk memulai',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,
                backgroundColor: Colors.blueGrey)
              ),
            ),
            
            TextField(
              decoration: InputDecoration(
                labelText: 'Username', labelStyle: TextStyle (color: Colors.deepPurpleAccent),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password', labelStyle: TextStyle (color: Colors.deepPurpleAccent),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika autentikasi di sini
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Implementasi navigasi ke halaman daftar di sini
              },
              child: Text('Create an account' , style: TextStyle (color: Colors.black87 , fontSize: 30 , fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
