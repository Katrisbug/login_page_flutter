import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/senai.png",
            height: 40,
          ),
          SizedBox(width: 10),
          Text("Login", style: TextStyle(color: Colors.white),),
        ],
        ),
        ),
      
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 60),
              Text("Faça Login para Acessar o Sistema!"),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: "Usuário",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}