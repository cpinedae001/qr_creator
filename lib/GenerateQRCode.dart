import 'package:flutter/material.dart';
import 'package:qr_creator/screens/qr_Image.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Creator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 10,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: 'Ingrese el texto'),
                )),
          ),
          ElevatedButton(
              onPressed: () async {
                FocusScope.of(context).unfocus();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return QRImage(controller);
                    })
                ).whenComplete(() => controller.text ="");
              }, child: Text('Generar QR'),
          )
        ],
      ),
    );
  }
}
