import 'package:flutter/material.dart';

import 'package:apmim/src/widgets/btn_material.dart';

class BtnsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screensize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        BtnMaterial(
          text: "Biodivercidad",
          press: () {
            Navigator.pushNamed(context, 'cibioma');
          },
          color: Color(0xff005292),
        ),
        SizedBox(height: _screensize.height * 0.02),
        BtnMaterial(
          text: "Rutas",
          press: () {},
          color: Color(0xff008f00),
        ),
        SizedBox(height: _screensize.height * 0.02),
        BtnMaterial(
          text: "Comparte tu Experiencia",
          press: () {},
          color: Color(0xffffd600),
        ),
      ],
    );
  }
}
