import 'package:bullseye_game/utils/text_styles.dart';
import 'package:flutter/material.dart';



class Prompt extends StatelessWidget {
   const Prompt({
     required this.targetValue,
     super.key
   });

  final int targetValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("put the bullseye as close as ypu can to".toUpperCase(), style: LabelTextStyle.bodyText1(context),),
        Padding(padding: const EdgeInsets.all( 8.0), child: Text("$targetValue"),)
      ],
    );
  }
}
