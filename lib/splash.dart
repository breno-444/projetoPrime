import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera_exemplo/inicial_page.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
     
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds:2),(){
      Navigator.push(context,MaterialPageRoute(
        builder: (context)=>Inicial(),
      ));
    });

  }

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Serviço concluído com sucesso!',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 5.0,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.red),
              strokeWidth: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}