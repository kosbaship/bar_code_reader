// هعخمل امبورت للماتريل باكدج
import 'package:flutter/material.dart';

// دي الداله اللي هيبدا من عندها البرنامج
//  يادوب خليتها تخفي البانر والهوم بتاعها يبق كلاس كامل
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QRCode(),
));


// الكلاس اللي هبني عليه البرنامج استات فول ودجيت
class QRCode extends StatefulWidget {
  @override
  _QRCodeState createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  @override
  Widget build(BuildContext context) {

    // خليت اول حاجه تظهر تحت الماتيريال سكافود ومن غير سيف اريا علشان يظهرلي الساعه
    // ويظهر اللي فوق الاب بار
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
