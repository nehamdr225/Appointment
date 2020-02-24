import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  final String text;
  final double size;
  final bool indicator;
  CenterText({this.size, this.text, this.indicator});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: 
      indicator== true? 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(
            backgroundColor: Colors.purple,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.purple[200]),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10.0),),
          Text(text, style: Theme.of(context).textTheme.body1.copyWith(fontSize: size)),
        ],
      ):
      Text(text, style: TextStyle(fontSize: size)),
      
    );
  }
}