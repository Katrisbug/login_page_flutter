import 'package:flutter/material.dart';
import 'package:login/ui/cadastro_page.dart';
import 'package:login/ui/recuperar_senha_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),

      body: SafeArea(
        child: Center(
          child: Container(
            width: 380,
            height: 700,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),

            child: Column(
              children: [

                // PARTE PRETA SUPERIOR
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
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

                      const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),

                // FORMULÁRIO
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(25),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const SizedBox(height: 20),

                        const Center(
                          child: Text(
                            "Faça Login para Acessar o Sistema!",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),

                        const SizedBox(height: 40),

                        // EMAIL
                        const Text(
                          "Email:",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),

                        const SizedBox(height: 10),

                        TextField(

                          decoration: InputDecoration(
                            hintText: "Insira seu email:",
                            filled: true,
                            fillColor: const Color(0xFFF3F3F3),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),

                           enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange.shade300,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.orange.shade600,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // SENHA
                        const Text(
                          "Senha:",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),

                        const SizedBox(height: 10),

                        TextField(
                          obscureText: true,

                          decoration: InputDecoration(
                            hintText: "Insira sua senha:",
                            filled: true,
                            fillColor: const Color(0xFFF3F3F3),

                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),

                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        // BOTÃO
                        SizedBox(
                          width: double.infinity,
                          height: 45,

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),

                            onPressed: () {},

                            child: const Text(
                              "Entrar",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // LINKS
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,

                          children: [

                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, 
                                MaterialPageRoute
                                  (builder: 
                                    (context) => const CadastroPage(),
                                  ),
                                );

                              },
                              child: const Text(
                                "Cadastre-se",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, 
                                MaterialPageRoute
                                  (builder: 
                                    (context) => const RecuperarSenhaPage(),
                                  ),
                                );

                              },
                              child: const Text(
                                "Esqueceu a senha?",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}