import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
class Authui extends StatelessWidget {
  const Authui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 220,

            child: ElevatedButton(style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: (){}, child: Row(
                children: [
                Icon(Icons.phone_android_outlined,color: Colors.black,),
                SizedBox(width: 8,),
                Text('Continue With Phone',style: TextStyle(color: Colors.black),)
              ],
            )),
          ),
          SignInButton(
          Buttons.Google,
          text:('Continue With Google'),
          onPressed:(){},
          ),
          SignInButton(
            Buttons.GitHub,
            text:('Continue With Github'),
            onPressed:(){},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('OR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Login With Email',style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,decoration: TextDecoration.underline)),
          ),


        ],
      ),
    );
  }
}
