import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/list_tile.dart';

class WFeatureBox extends StatelessWidget {
  final ListTileFeature _listTileFeature;

  WFeatureBox(this._listTileFeature);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          '${_listTileFeature.imageUrl}',
          width: 32,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          '${_listTileFeature.desc}',
          style: regular.copyWith(
            color: blackColor,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
