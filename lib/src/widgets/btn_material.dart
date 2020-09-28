import 'package:flutter/material.dart';
import 'package:apmim/src/widgets/responsive.dart';

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
    //final _screenSize = MediaQuery.of(context).size;
    final Responsive responsive = Responsive.of(context);
    return Container(
      child: MaterialButton(
        height: responsive.hp(6),
        minWidth: responsive.wp(70),
        child: Text(
          text,
          style: TextStyle(color: textColor, 
          fontSize: responsive.ip(2.3)),
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
