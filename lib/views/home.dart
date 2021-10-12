import 'package:flutter/material.dart';
import 'package:rooster_letcode/routes/routes.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insights"),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () => {Navigator.pushNamed(context, AppRoutes.videos)},
            child: Card(
              child: Image.asset(
                'assets/home/playwright.png',
                height: 120,
              ),
            ),
          )
        ],
      ),
    );
  }
}
