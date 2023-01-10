import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:netflix/homepage.dart';
import 'main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 170,
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
          SpinKitWave(
            color: Colors.white,
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 50,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    icon: Icon(
                      Icons.login,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    label: Text("Giriş Yap"),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 150,
                height: 50,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.login,
                      color: Colors.red,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    label: Text(
                      "Kayıt Ol",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
