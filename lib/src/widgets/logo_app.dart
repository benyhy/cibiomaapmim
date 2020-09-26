import 'package:flutter/material.dart';

class LogoApm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Image.asset('assets/images/logo.png',
          width: _screenSize.width * 0.68,
          height: _screenSize.width * 0.68,  
        ),
      ),
    );
  }
}
