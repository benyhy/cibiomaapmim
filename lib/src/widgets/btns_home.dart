import 'package:apmim/src/widgets/responsive.dart';
import 'package:flutter/material.dart';

import 'package:apmim/src/widgets/btn_material.dart';

class BtnsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
  
    return Column(
      children: <Widget>[
        BtnMaterial(
          text: "Biodivercidad",
          press: () {
            Navigator.pushNamed(context, 'cibioma');
          },
          color: Color(0xff005292),
        ),
        SizedBox(height: responsive.hp(2)),
        BtnMaterial(
          text: "Rutas",
          press: () {},
          color: Color(0xff008f00),
        ),
        SizedBox(height: responsive.hp(2)),
        BtnMaterial(
          text: "Comparte tu Experiencia",
          press: () {},
          color: Color(0xffffd600),
        ),
      ],
    );
  }
}
