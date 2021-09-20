import 'package:flutter/material.dart';
import 'package:rumah_pangan/static/string_asset.dart';
import 'package:rumah_pangan/static/string_const.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/list_tile.dart';
import 'package:rumah_pangan/widget/w_error_page.dart';

class FSedangDikirim extends StatefulWidget {
  @override
  _FSedangDikirimState createState() => _FSedangDikirimState();
}

class _FSedangDikirimState extends State<FSedangDikirim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(STRTitle.dikirimPage),
        backgroundColor: purpleColor1,
      ),
      body: WErrorPage(
        ListTileError(
          imageUrl: STRIllustration.err404,
          title: STRLabel.notFound,
          desc: STRDesc.notFound,
        ),
      ),
    );
  }
}