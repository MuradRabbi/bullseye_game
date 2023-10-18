import 'package:bullseye_game/game_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const BullseyeGame());
}

class BullseyeGame extends StatelessWidget {
  const BullseyeGame({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
     [
       DeviceOrientation.landscapeLeft,
       DeviceOrientation.landscapeRight
     ]
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bulls Eye',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GamePage(),
    );
  }
}


