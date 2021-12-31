import 'package:flutter/material.dart';
import 'package:message_chat/screens/register.dart';
import 'package:message_chat/screens/signin_screen.dart';
import 'package:message_chat/widgets/my_button.dart';

class HomeScreen extends StatelessWidget {
  static const String screenRoute = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  child: Image.asset('images/log.png'),
                ),
                Text(
                  "Message Me",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff2e386b)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: "SIGN IN",
              onpressed: () {
                Navigator.pushNamed(context, SignInScreen.screenRoute);
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: "REGISTER",
              onpressed: () {
                Navigator.pushNamed(context, RegisterScreen.screenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
