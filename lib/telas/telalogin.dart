import 'package:flutter/material.dart';

class TelaDeLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height / 4,
              width: size.width / 2,
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(1000),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: size.height / 4,
                width: size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(1000),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ],
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                  height: size.height * 0.85,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Bem Vindo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 300,
                        child: Image.asset('assets/reading.png'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.cyan),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          primary: Colors.white,
                          minimumSize: Size(size.width, 50),
                          elevation: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
