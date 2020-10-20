import 'package:flutter/material.dart';
// هنعمل للباكدج امبورت
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QRCode(),
));


class QRCode extends StatefulWidget {
  @override
  _QRCodeState createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  // دا النص اللي هيتعرض فيه الداتا اللي جايه من البار كود
  String _data = 'Barcode Data appears here';
  // String _data = '';

  // داله الاسكان دي هيا اللي هيبق فيها كود الكيو ار كود
   _scan() async{
     // 1 -هات الكيو ار كود
     // قبل ما عتنفذ اتنين استدعي ست استيت علشان تعمل ري بلد وتظهر التغيرات
     // 2- قيمته حطها في المتغير اللي اسمه داتا
    await FlutterBarcodeScanner
        .scanBarcode('#000000', 'Cancel', true, ScanMode.BARCODE)
        .then((value) => setState(() =>_data = value));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:
        Text('Qr / Barcode Reader'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(_data,
          style: TextStyle(fontSize: 26.0),
          ),
          SizedBox(
            width: double.infinity,
          ),
          Material(
            elevation: 5.0,
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(30.0),
            child: MaterialButton(
              minWidth: 200.0,
              height: 42.0,
              // الضغطه هنا هتستدعي داله اسمها اسكان
              onPressed: ()  {
                _scan();
               },
            child: Text
              ('Scan Barcode',
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
