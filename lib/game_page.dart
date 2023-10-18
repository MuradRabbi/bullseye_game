import 'package:bullseye_game/widgets/control.dart';
import 'package:bullseye_game/widgets/prompt.dart';
import 'package:flutter/material.dart';



class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  var _isAlertVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Prompt(targetValue: 100),
            const SizedBox(height: 15,),
            const Control(),
            TextButton(
              child: const Text("Hit Me", style: TextStyle(color: Colors.red),),
              onPressed: (){
                _isAlertVisible = true;
                _showAlert(context);
              }
            )
          ],
        ),
      ),
    );
  }


  void _showAlert(BuildContext context){
    var cancelButton = TextButton(
        onPressed: (){
          Navigator.of(context).pop();
          _isAlertVisible = false;
          print("You are Awesome");
        },
        child: Text("Close"));

    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Hello There!"),
            content: Text("You are awesome"),
            actions: [
              cancelButton
            ],
          );
        }
    );
  }
}
