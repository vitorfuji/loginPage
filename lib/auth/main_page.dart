import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginui/auth/auth_page.dart';
import 'package:loginui/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        // checking auto state changes, it happens when we try to sign in
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // if we sign in and it has a user in there, it returns HomePage
            return const HomePage();
          } else {
            // otherwise LoginPage
            return const AuthPage();
          }
        },
      ),
    );
  }
}
