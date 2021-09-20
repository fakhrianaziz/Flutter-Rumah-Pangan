import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rumah_pangan/static/string_asset.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/list_tile.dart';

class WErrorPage extends StatelessWidget {
  final ListTileError _listTileError;

  WErrorPage(this._listTileError);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              '${_listTileError.imageUrl}',
              width: 250,
            ),
            // Container(
            //   width: 250,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('${_listTileError.imageUrl}'),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 40,
            ),
            Text(
              '${_listTileError.title}',
              style: semiBold.copyWith(
                color: blackColor,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${_listTileError.desc}',
              style: regular.copyWith(
                color: blackColor,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
