import 'package:flutter/material.dart';
import 'package:login/ui/login_page.dart';

class RecuperarSenhaPage extends StatelessWidget {
  const RecuperarSenhaPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),

      body: SafeArea(
        child: Center(

          child: Container(
            width: 380,
            height: 700,
            color: Colors.white,

            child: Column(
              children: [

                // TOPO AZUL
                Container(
                  width: double.infinity,
                  height: 170,

                  decoration: const BoxDecoration(
                    color: Color(0xFF001E9A),

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      // LOGO
                      Image.asset(
                        "assets/senai.png",
                        width: 180,
                      ),

                      const SizedBox(height: 10),

                      // TEXTO
                      const Text(
                        "Recuperação de senha",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),

                // FORMULÁRIO
                Padding(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      const SizedBox(height: 30),

                      // TEXTO CENTRAL
                      const Center(
                        child: Text(
                          "Insira seu e-mail para recuperar\n a senha!",
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      const SizedBox(height: 50),

                      // EMAIL
                      const Text(
                        "Email:",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 10),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Insira seu email:",

                          filled: true,
                          fillColor: const Color(0xFFF1F1F1),

                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),

                      const SizedBox(height: 35),

                      // BOTÃO
                      SizedBox(
                        width: double.infinity,
                        height: 48,

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),

                          onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                    ),
                                  );
                              },

                          child: const Text(
                            "Cadastre-se",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}