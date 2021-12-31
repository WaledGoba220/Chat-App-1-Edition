import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:message_chat/screens/chat_screen.dart';
import 'package:message_chat/screens/home_screen.dart';
import 'package:message_chat/screens/register.dart';
import 'package:message_chat/screens/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: "Message App",
      //home: ChatScreen(),
      initialRoute: _auth.currentUser != null
          ? ChatScreen.screenRoute
          : HomeScreen.screenRoute,
      routes: {
        HomeScreen.screenRoute: (context) => HomeScreen(),
        SignInScreen.screenRoute: (context) => SignInScreen(),
        RegisterScreen.screenRoute: (context) => RegisterScreen(),
        ChatScreen.screenRoute: (context) => ChatScreen(),
      },
    );
  }
}
