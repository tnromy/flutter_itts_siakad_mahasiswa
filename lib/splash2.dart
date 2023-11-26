import 'package:flutter/material.dart';
import './login_view.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sistem Akademik Mahasiswa', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color.fromARGB(255, 105, 234, 217),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  child: Text("Back"),
                  onPressed: ()  async {
                        Navigator.pop(
                          context
                        );
                      },
                ),
              ),
            ),

            // image
            Container(
              //width: (MediaQuery.of(context).size.width * 0.75),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Image(
                image: AssetImage("assets/splash2.png"),
                fit: BoxFit.cover
              ),
            ),

            // text dan next
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: Center(
                      child: Text("Institut Teknologi Tangerang Selatan", style: TextStyle(color: Colors.blue, fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      child: Text("Next"),
                      onPressed: ()  async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginView( )),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}