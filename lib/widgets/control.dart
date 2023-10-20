import 'package:bullseye_game/utils/text_styles.dart';
import 'package:flutter/material.dart';

import '../models/game_models.dart';



class Control extends StatefulWidget {
  Control({
    this.model,
    super.key
  });

  final GameModel? model;

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text("1",style: LabelTextStyle.bodyText1(context),),
        ),
        Expanded(
          child: Slider(
              value: widget.model!.current!.toDouble(),
              onChanged: (newValue){
                setState(() {
                  widget.model!.current = newValue.toInt();
                });
              },
            min: 1.0,
            max: 100.0,
          ),
        ),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text("100",style: LabelTextStyle.bodyText1(context),),
        ),
      ],
    );
  }
}
