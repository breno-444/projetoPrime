import 'package:flutter/material.dart';
import 'package:flutter_camera_exemplo/inicial_page.dart';
import 'package:flutter_camera_exemplo/splash_2.dart';

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedbackPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        //backgroundColor: Colors.white,
        elevation: 2.0,
        title: Text(
          'Feedback',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10.0),
            Text(
              'Feedback',
              style: TextStyle(color: Colors.black87),
            ),
            SizedBox(height: 20.0),
            buildFeedbackForm(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 275,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: ButtonTheme(
                      child: ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Splash2()),
                          ),
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        child: Text(
                          "Enviar",
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
          ],
        ),
      ),
    );
  }
}

buildFeedbackForm() {
  return Container(
    height: 200,
    child: Stack(
      children: <Widget>[
        TextField(
          maxLines: 10,
          decoration: InputDecoration(
            hintText: "Descreva resumidamente o que acho do nosso serviço",
            hintStyle: TextStyle(
              fontSize: 13.0,
              color: Colors.black54,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffc5c5c5)),
            ),
          ),
        ),
      ],
    ),
  );
}
