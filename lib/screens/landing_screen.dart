import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  static const String id = "LandingPage";
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
         title: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text(
               "H",
               style: TextStyle(
                 fontWeight:FontWeight.bold,
                 fontSize : 30.0,
                 color: Colors.teal,
               ),
             ),
             Text(
               "Bot",
               style: TextStyle(
                 fontSize : 20.0,
                 color: Colors.blue[600],
               ),
             ),
             const SizedBox(width: 197),
           ],
        ),
      ),
      body: //to use media queries 
      Column(
        children : [
          SizedBox(
            height: 140,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 80.0),
            child: Text("What brings you here?",
            style : TextStyle(
              fontSize: 20.0,
              color: Colors.lightBlue,
            )
            ),
          ),
          SizedBox(
              height: 42,
          ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon( // <-- Icon
            Icons.local_hospital_rounded,
            size: 24.0,
          ),
            label: Text('\n Need a health support \n Chat with Doctors\n',
            style : TextStyle(
                fontWeight: FontWeight.bold,
            )), // <-- Text
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon( // <-- Icon
              Icons.man_sharp,
              size: 24.0,
            ),
            label: Text('\n Check Symptoms \n Check your symptoms\n',
            style : TextStyle(
              fontWeight: FontWeight.bold,
            )), // <-- Text
          ),
      ]
      ),
    );
  }
}
