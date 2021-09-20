import 'package:flutter/material.dart';
import 'package:rumah_pangan/static/string_asset.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/list_tile.dart';

class WCardCarousel extends StatelessWidget {
  final ListTileCarousel _listTileCarousel;
  final ListTextCarousel _listTextCarousel;

  WCardCarousel(this._listTileCarousel, this._listTextCarousel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('${_listTileCarousel.imageUrl}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                stops: [0.4, 1],
                colors: [Color(0xff000000).withOpacity(0.0), Color(0xff000000).withOpacity(1)],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '${_listTextCarousel.title}',
                    style: semiBold.copyWith(
                      color: whiteColor,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '${_listTextCarousel.desc}',
                    style: regular.copyWith(
                      color: whiteColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
