import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rooster_letcode/routes/routes.dart';
import 'package:rooster_letcode/views/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.blueAccent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: AppRoutes.define(),
        title: 'Rooster LetCode',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const Home());
  }
}
