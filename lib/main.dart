import 'package:chatter/pages/chat_page.dart';
// import 'package:chatter/pages/home_page.dart';
import 'package:chatter/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ChatPage(
        receiverEmail: 'GeorgesRoberto email',
      ),
      theme: lightMode,
    );
  }
}
