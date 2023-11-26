import 'package:flutter/material.dart';
import './pages.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sistem Akademik Mahasiswa', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: ()  async {
                        Navigator.pop(
                          context
                        );
                      },
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
              margin: EdgeInsets.symmetric(vertical: 5),
               child: TextField(
                controller: TextEditingController(),
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "Username",
                ),
               ),
             ),
             Container(
               margin: EdgeInsets.symmetric(vertical: 5),
               child: TextField(
                controller: TextEditingController(),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password"
                ),
               ),
             ),
             Container(
               margin: EdgeInsets.symmetric(vertical: 5),
               child: SizedBox(
                width: MediaQuery.of(context).size.width,
                 child: ElevatedButton(
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                  onPressed: ()  async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pages( )),
                        );
                      },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                 ),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}