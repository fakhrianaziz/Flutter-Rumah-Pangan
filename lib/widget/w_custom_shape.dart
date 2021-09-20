import 'package:flutter/material.dart';
import 'package:rumah_pangan/themes/theme.dart';

class WBackgorund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
            color: purpleColor1,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(200, 20),
              bottomRight: Radius.elliptical(200, 20),
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: purpleColor2,
              shape: BoxShape.circle,
            ),
          ),
          top: -30,
          left: -50,
        ),
        Positioned(
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: purpleColor2,
              shape: BoxShape.circle,
            ),
          ),
          top: -60,
          right: 80,
        ),
        Positioned(
          child: Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: purpleColor2,
              shape: BoxShape.circle,
            ),
          ),
          top: 50,
          right: -30,
        ),
      ],
    );
  }
}
