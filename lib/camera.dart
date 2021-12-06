import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera_camera/camera_camera.dart';
import 'package:flutter_camera_exemplo/preview_page.dart';
import 'package:flutter_camera_exemplo/progresso.dart';
import 'package:flutter_camera_exemplo/widgets/anexo.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class SegundaRota extends StatefulWidget {
  SegundaRota({Key? key}) : super(key: key);

  @override
  _SegundaRota createState() => _SegundaRota();
}

class _SegundaRota extends State<SegundaRota> {
  File? arquivo;
  final picker = ImagePicker();

  Future getFileFromGallery() async {
    PickedFile? file = await picker.getImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => arquivo = File(file.path));
    }
  }

  showPreview(file) async {
    File? arq = await Get.to(() => PreviewPage(file: file));

    if (arq != null) {
      setState(() => arquivo = arq);
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Envie uma foto do veiculo'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (arquivo != null) Anexo(arquivo: arquivo!),
                ElevatedButton.icon(
                  onPressed: () => Get.to(
                    () => CameraCamera(onFile: (file) => showPreview(file)),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  icon: Icon(Icons.camera_alt),
                  label: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Tire uma foto'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('ou'),
                ),
                OutlinedButton.icon(
                  icon: Icon(Icons.attach_file),
                  label: Text(
                    'Selecione um arquivo',
                    style: TextStyle( color: Colors.white),
                  ),
                  onPressed: () => getFileFromGallery(),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                ),
                SizedBox(
                  width: 228,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    child: ButtonTheme(
                      child: ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Progresso()),
                          ),
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        child: Text(
                          "CONCLUIR",
                          style: TextStyle( color: Colors.white),
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
