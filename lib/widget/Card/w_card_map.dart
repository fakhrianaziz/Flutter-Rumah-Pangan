import 'package:flutter/material.dart';
import 'package:rumah_pangan/static/string_asset.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/list_tile.dart';

class WMapCard extends StatelessWidget {
  final ListMapDummy _listMapDummy;

  WMapCard(this._listMapDummy);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            '${_listMapDummy.imageUrl}',
          ),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: strokeColor1,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
