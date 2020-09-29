import 'package:apmim/src/widgets/responsive.dart';
import 'package:flutter/material.dart';

class LogoApm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
   
    return Container(
      child: Center(
        child: Image.asset('assets/images/logo.png',
          width: responsive.wp(85),
          height: responsive.hp(35),  
        ),
      ),
    );
  }
}
