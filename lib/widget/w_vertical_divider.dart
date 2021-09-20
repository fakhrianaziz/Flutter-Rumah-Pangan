import 'package:flutter/material.dart';
import 'package:rumah_pangan/themes/theme.dart';

class WVerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: strokeColor2,
      indent: 2,
      endIndent: 2,
      thickness: 1,
    );
  }
}