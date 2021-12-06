import 'package:flutter/material.dart';
import 'camera.dart';
import 'package:progress_timeline/progress_timeline.dart';
import 'package:get/get.dart';

import 'splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    
      home: Progresso(),
    );
  }
}

class Progresso extends StatefulWidget {
  
  

  @override
  _ProgressoState createState() => _ProgressoState();
}

class _ProgressoState extends State<Progresso> {
  late ProgressTimeline screenProgress;

 
  List<SingleState> allStages = [
    SingleState(stateTitle: "Seu carro chegou\nna oficina"),
    SingleState(stateTitle: "O mecanico está \nanalizando o defeito"),
    SingleState(stateTitle: "Seu carro esta \nsendo concertado"),
    SingleState(stateTitle: "Seu carro esta\npronto!!!!"),
  ];

  get openCamera => null;

@override
  void initState() {
    screenProgress = new ProgressTimeline(
      states: allStages,
      connectorColor: Colors.blueAccent,
      connectorLength: 200.0,
      connectorWidth: 10.0,
      currentIcon: Icon(Icons.car_repair_outlined),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
         backgroundColor: Colors.black,
        title: Text('Progresso do veiculo'),
      ),
      body: Center(
        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: screenProgress,
            ),
            SizedBox(
              height: 90,
            ),
            ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Proximo",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              
              onPressed: () {
                screenProgress.gotoNextStage();
              },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
            ),
            SizedBox(
              height: 50,
            ),
             ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "  Voltar  ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            
              onPressed: () {
                screenProgress.gotoPreviousStage();

              },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
            ),
            SizedBox(
              height: 10,
            ),
             ElevatedButton(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Concluir serviço",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            
              onPressed: () {
                  Navigator.push(
            context, 
          MaterialPageRoute(
            builder:(BuildContext  context) => Splash()));

              },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
            ),
            SizedBox(
              height: 50,
            ),
  
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          Navigator.push(
            context, 
          MaterialPageRoute(
            builder:(BuildContext  context) => SegundaRota()));
        },
        
        child: Icon(Icons.camera_alt)
        ,
      ),
    );
  }
}