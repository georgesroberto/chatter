import 'package:flutter/material.dart';
import 'package:chatter/pages/login_page.dart';
import 'package:chatter/pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLoginPage = true;

  void pageToggler() {
    setState(() {
      isLoginPage = !isLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoginPage) {
      return LoginPage(onTap: pageToggler);
    } else {
      return RegisterPage(onTap: pageToggler);
    }
  }
}
