import 'package:flutter/material.dart';
import 'package:rumah_pangan/static/string_asset.dart';
import 'package:rumah_pangan/static/string_const.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/list_tile.dart';
import 'package:rumah_pangan/widget/w_error_page.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(STRTitle.cartPage),
        backgroundColor: purpleColor1,
      ),
      body: WErrorPage(
        ListTileError(
          imageUrl: STRIllustration.errUnderConstruction,
          title: STRLabel.underConstruction,
          desc: STRDesc.underConstruction,
        ),
      ),
    );
  }
}