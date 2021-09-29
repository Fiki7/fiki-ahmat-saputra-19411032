import 'package:flutter_app/ui/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class loginview extends StatefulWidget {
  const loginview({Key? key}) : super(key: key);

  @override
  _loginviewState createState() => _loginviewState();
}

class _loginviewState extends State<loginview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 15),
              child: Center(
                child: SizedBox(
                    width: 200,
                    height: 200,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/login.png')),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: Text(
                  'Masuk',
                  style: (TextStyle(
                      color: Colors.blue, fontSize: 30, fontFamily: 'Raleway')),
                ),
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                // controller: controlleremail,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0))),
                    labelText: 'Email',
                    hintText: 'Masukan Email'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                // controller: controllerpassword,
                autofocus: true,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0))),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            FlatButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Container(
              // padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 20.0),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(23)),
              child: FlatButton(
                onPressed: () {
                  // Submit(context);
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: const Text(
                  'LOG IN',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => registerview()));
                },
                child: const Text(
                  'Belum Punya Akun? Daftar',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                )),
            // Text('Belum Punya Akun? Daftar')
          ],
        ),
      ),
    );
  }
}
