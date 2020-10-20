import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  // تغير الثيم الرئيسي للبرنامج
  theme: ThemeData.dark(),
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
        Text('Qr / Bar Code Reader'),
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
          Text('Demo Two',
            style: TextStyle(fontSize: 50.0),
          ),
        ],
      ),
    );
  }
}
