import 'package:flutter/material.dart';
import 'cadastro_pages.dart';

import 'inicial_page.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Tela de login'),
        actions: [
          PopupMenuButton<int>(
            child: Text(
              'CADASTRAR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 5,
              ),
            ),
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text('Cadastro de Filial'),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('Cadastro de Segurado'),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text('Cadastro de Seguradora'),
              ),
              PopupMenuItem<int>(
                value: 3,
                child: Text('Cadastro de Cliente'),
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              child: Image.network(
                  "data:image/png;base64,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"),
            ),
            SizedBox(
              width: 275,
              child: Container(
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 295,
              child: Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.clear),
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 275,
              child: Container(
                margin: EdgeInsets.all(10),
                child: ButtonTheme(
                  buttonColor: Colors.black,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InicialPage()),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CadastroFilialPage()));
        break;
      case 1:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CadastroSeguradoPage()));
        break;
      case 2:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CadastroSeguradoraPage()));
        break;
      case 3:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CadastroClientePage()));
        break;
    }
  }
}
