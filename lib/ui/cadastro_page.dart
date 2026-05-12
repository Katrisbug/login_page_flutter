import 'package:flutter/material.dart';
import 'package:login/ui/login_page.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),

      body: SafeArea(
        child: Center(

          child: Container(
            width: 380,
            height: 760,

            color: Colors.white,

            child: Column(
              children: [

                // TOPO VERMELHO
                Container(
                  width: double.infinity,
                  height: 170,

                  color: Colors.red,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      Image.asset(
                        "assets/senai.png",
                        width: 180,
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Cadastre-se",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),

                // FORMULÁRIO
                Expanded(
                  child: SingleChildScrollView(

                    child: Padding(
                      padding: const EdgeInsets.all(20),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          // NOME
                          const Text("Nome:", 
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                            ),
                          ),


                          const SizedBox(height: 10),

                          TextField(
                            decoration: InputDecoration(
                              hintText: "Insira seu nome:",

                              filled: true,
                              fillColor: const Color(0xFFF1F1F1),

                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),

                          const SizedBox(height: 25),

                          // SOBRENOME
                          const Text("Sobrenome:", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                            ),
                          ),

                          const SizedBox(height: 10),

                          TextField(
                            decoration: InputDecoration(
                              hintText: "Insira seu sobrenome:",

                              filled: true,
                              fillColor: const Color(0xFFF1F1F1),

                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),

                          const SizedBox(height: 25),

                          // EMAIL
                          const Text("E-mail:", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600
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

                          const SizedBox(height: 25),

                          // TELEFONE
                          const Text("Telefone:", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                            ),
                          ),

                          const SizedBox(height: 10),

                          TextField(
                            decoration: InputDecoration(
                              hintText: "Insira seu telefone:",

                              filled: true,
                              fillColor: const Color(0xFFF1F1F1),

                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),

                          const SizedBox(height: 25),

                          // SENHA
                          const Text("Senha:", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                            ),
                          ),

                          const SizedBox(height: 10),

                          TextField(
                            obscureText: true,

                            decoration: InputDecoration(
                              hintText: "Insira sua senha:",

                              filled: true,
                              fillColor: const Color(0xFFF1F1F1),

                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),

                          const SizedBox(height: 25),

                          // CONFIRMAR SENHA
                          const Text("Confirmar senha:", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                            ),
                          ),

                          const SizedBox(height: 10),

                          TextField(
                            obscureText: true,

                            decoration: InputDecoration(
                              hintText: "Insira sua senha:",

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

                              //voltar para login
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