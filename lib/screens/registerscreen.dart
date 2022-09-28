import 'package:flutter/material.dart';
import 'package:vendbot/widgets/auth_ui.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({Key? key}) : super(key: key);
  static const String id="Registerscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      appBar: AppBar(
        title:Text("Bot"),
        leading: Icon(Icons.h_mobiledata),
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            width: MediaQuery.of(context).size.width, //to fit the image within the display
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset('images/account.png'),
                Text('Welcome',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.cyan.shade900),)

              ],
            ),
          ),),
          Expanded(child:
          Container(
            child: Authui(),
          ),),
          
        ],
      ),
    );
  }
}
