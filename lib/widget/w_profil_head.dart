import 'package:flutter/material.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/list_tile.dart';

class WProfilHead extends StatelessWidget {
  final ListTileProfile _listTileProfile;

  WProfilHead(this._listTileProfile);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1573007974656-b958089e9f7b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${_listTileProfile.title}',
                style: semiBold.copyWith(
                  color: whiteColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '${_listTileProfile.name}',
                style: bold.copyWith(
                  color: whiteColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
