import 'package:flutter/material.dart';

import 'package:apmim/src/pages/home/home_portrait.dart';

class Homepage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffcdcdcd),
      body: Container(
        child: HomePortraitPage(),
      ),
    );
  }
}
