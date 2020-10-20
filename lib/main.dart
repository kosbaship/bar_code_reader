import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QRCode(),
));


class QRCode extends StatefulWidget {
  @override
  _QRCodeState createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
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
          Text('Demo One',
          style: TextStyle(fontSize: 50.0),
          ),
          SizedBox(
            width: double.infinity,
          ),
          // عمل زرار شكله حلو
          Material(
            elevation: 5.0,
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(30.0),
            child: MaterialButton(
              minWidth: 200.0,
              height: 42.0,
              onPressed: () {

              },
              child: Text('Scan Barcode',
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
