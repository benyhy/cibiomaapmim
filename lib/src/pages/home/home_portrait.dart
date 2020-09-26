import 'package:flutter/material.dart';

import 'package:apmim/src/widgets/btns_home.dart';
import 'package:apmim/src/widgets/logo_app.dart';

class HomePortraitPage extends StatelessWidget {
  const HomePortraitPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Container(
            width: _screenSize.width ,
            height: _screenSize.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LogoApm(),
              ],
            ),
          ),
          Container(
            width: _screenSize.width,
            height: _screenSize.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                BtnsHome(),
              ],
            )
          ),
        ],
      ),
    );
  }
}