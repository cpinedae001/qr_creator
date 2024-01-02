
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRImage  extends StatelessWidget {
  const QRImage (this.dato,{super.key});
  final TextEditingController dato;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: QrImageView(
          data: dato.text,
          version: 8,
          size: 300,
          // gapless: false,
          backgroundColor: Colors.red,
          errorStateBuilder: (context, err){
            return  Container(
              child: const Center(
                child: Text('Creo que ha ocurrido un error', textAlign: TextAlign.center,),
              ),
            );
          },
        ),
      ),
    );
  }
}
