import 'package:flutter/material.dart';

void main() {
  runApp(const main());
}
class main extends StatelessWidget {
final String nome;
final String email;
final String telefone;
final String senha;
const main({
    super.key,
    required this.nome,
    required this.email,
    required this.telefone,
    required this.senha,
  });
})
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
      title: const Text("Dados do usuário"), 
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(20),
      child:Padding(padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nome: $nome", style: const TextStyle(fontSize: 18, color: Colors.white)),
          Text("Email: $email", style: const TextStyle(fontSize: 18, color: Colors.white)),
          Text("Telefone: $telefone", style: const TextStyle(fontSize: 18, color: Colors.white)),
          Text("Senha: $senha", style: const TextStyle(fontSize: 18, color: Colors.white)),

          Center(child: ElevatedButton(onPressed: (){Navigator.of(context).pop();},
          child: const Text("Voltar"),
          )
        ],
      ),

    )
  }
}
