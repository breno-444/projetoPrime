import 'package:flutter/material.dart';

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InformacaoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InformacaoPage extends StatefulWidget {
  @override
  _InformacaoPageState createState() => _InformacaoPageState();
}

class _InformacaoPageState extends State<InformacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Informações Gerais'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Informações Gerais\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 35,
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              'Está com alguma duvida em algum assunto? \nNós podemos ajudar!\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18,
                color: Colors.grey.shade600,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: new EdgeInsets.symmetric(vertical: 20.0),
                      width: 300,
                      height: 120,
                      color: Colors.grey[100],
                      child: Text(
                        '\nNecessitou?\n\nFalar com nossos atendentes no numero:\n\nTelefone: (xx)xxxx-xxxx',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 15,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 300,
                      height: 120,
                      color: Colors.grey[100],
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PassoAPassoPage())),
                        },
                        child: Text(
                          '\nQuais ações devo fazer?\n\nClieque aqiu!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 15,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PassoAPassoPage extends StatefulWidget {
  @override
  _PassoAPassoPageState createState() => _PassoAPassoPageState();
}

class _PassoAPassoPageState extends State<PassoAPassoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Informações Gerais'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Quais ações devo fazer?\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18,
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              'Em ajuda de terceiros deve-se encontrar o endereço da oficina, link ou telefone pra solicitar transporte extra, e o carro reserva, e do reboque ou guincho, e informar o boletim de ocorrencia que deve ser feito junto a ao batalhaão de polícia. \n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18,
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              'Na parte de acompanhamento do serviço: deve entrar com seu usuário para acompanhar o progresso do serviço solicitado\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18,
                color: Colors.grey.shade600,
              ),
            ),
            Text(
              'Sua franqui será informada juntamente quando for fazer o boletim de ocorrencia\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 18,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}