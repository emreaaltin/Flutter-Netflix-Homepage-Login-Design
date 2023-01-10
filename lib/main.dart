import 'package:flutter/material.dart';
import 'login.dart';
import 'homepage.dart';

void main() {
  runApp(const NetflixClone());
}

class NetflixClone extends StatefulWidget {
  const NetflixClone({super.key});

  @override
  State<NetflixClone> createState() => _NetflixCloneState();
}

class _NetflixCloneState extends State<NetflixClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
