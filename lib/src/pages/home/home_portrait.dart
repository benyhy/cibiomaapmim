import 'package:apmim/src/widgets/responsive.dart';
import 'package:flutter/material.dart';

import 'package:apmim/src/widgets/btns_home.dart';
import 'package:apmim/src/widgets/logo_app.dart';

class HomePortraitPage extends StatelessWidget {
  const HomePortraitPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Center(
      child: Column(
        children: [
          Container(
            width: responsive.width ,
            height: responsive.hp(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                LogoApm(),
              ],
            ),
          ),
          Container(
            width: responsive.width ,
            height: responsive.hp(50),
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