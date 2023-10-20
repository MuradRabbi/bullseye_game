import 'package:flutter/material.dart';



class Score extends StatefulWidget {
  int? score;
  int? round;
    Score({
    this.score,
    this.round,
    super.key
  });

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(onPressed: (){}, child: Text("Start Again!", style: TextStyle(color: Colors.blue),)),
        SizedBox(width: 5,),
        Padding(
            padding:EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Text("Score : "),
              Text("${widget.score} "),
            ],
          ),
        ),
        Padding(
          padding:EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            children: [
              Text("Round : "),
              Text("${widget.round} "),
            ],
          ),
        ),
        SizedBox(width: 5,),
        TextButton(onPressed: (){}, child: Text("Info", style: TextStyle(color: Colors.blue),))
      ],
    );
  }
}
