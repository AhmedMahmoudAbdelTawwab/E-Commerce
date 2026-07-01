import 'package:e_commerce/features/auth/presntation/view/screens/login_screen.dart';
import 'package:e_commerce/features/auth/presntation/view/screens/sign_in_screen.dart';
import 'package:e_commerce/features/home/presentation/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        SignInScreen.routeName: (context) => SignInScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      home: SignInScreen(),
    );
  }
}
