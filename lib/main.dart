import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:login/ui/login_page.dart';
import 'package:login/ui/load_page.dart';

void main(){
  runApp(DevicePreview(builder: (context) => App()));
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoadPage(), 
    );
  }
} 

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Bom dia"),
      ),
    );
  }
}
