import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Telaregistro extends StatefulWidget {
  const Telaregistro({super.key});

  @override
  State<Telaregistro> createState() => _TelaregistroState();
}
class _TelaregistroState extends State<Telaregistro> {
  @override
  var_hidetext = true;

  final _controllerNome = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerTelefone = TextEditingController();
  final _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Tela de Registro"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(padding:   const EdgeInsets.all(20),
        child: Column(  
          children: [
           Image.asset("assets/user.png", width: 150, height: 150),
           const SizedBox(height: 20),

           Widgetdados(
            controller: _controllerNome,
            label: "Nome",
            icon: Icons.person,
            hint: "Digite seu nome completo",
           ),

            Widgetdados(
              controller: _controllerEmail,
              label: "Email",
              icon: Icons.email,
              hint: "Digite seu email",
            ),

            Widgetdados(
              controller: _controllerTelefone,
              label: "Telefone",
              icon: Icons.phone,
              hint: "Digite seu telefone",
            ),
            Widgetdados(
              controller: _controllerSenha,
              label: "Senha",
              icon: Icons.lock,
              hint: "Digite sua senha",
              obscureText: var_hidetext,
              toggleObscure: (){
                setState(() {
                  var_hidetext = !var_hidetext;
                });
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return Tela(
                      nome: _controllerNome.text,
                      email: _controllerEmail.text,
                      telefone: _controllerTelefone.text,
                      senha: _controllerSenha.text,
                    );
                  }
                  ),
                ));
              }),
            )

          ],

      )
    );
  }
}