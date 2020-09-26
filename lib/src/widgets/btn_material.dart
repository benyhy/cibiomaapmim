import 'package:flutter/material.dart';

class BtnMaterial extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const BtnMaterial({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      child: MaterialButton( 
        height: _screenSize.height *0.06,
        minWidth: _screenSize.width * 0.65,
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 20.0),
        ),
        onPressed: press,
        color: color,
        elevation: 10,
        highlightElevation: 2,
        shape: StadiumBorder(),
      ),
    );
  }
}
