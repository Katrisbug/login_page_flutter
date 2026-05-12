import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {

  @override
  void initState() {
    super.initState();

    // TEMPO DA TELA
    Timer(
      const Duration(seconds: 5),

      () {
        Navigator.pushReplacement(
          context,

          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // LOGO
            Image.asset(
              "assets/senai.png",
              width: 220,
              height: 50,
            ),

            const SizedBox(height: 100),

            // LOADING
            const CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 8,
            ),
          ],
        ),
      ),
    );
  }
}