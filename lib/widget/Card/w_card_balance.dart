import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/list_tile.dart';
import 'package:rumah_pangan/widget/w_vertical_divider.dart';

class WBalanceCard extends StatelessWidget {
  final ListTileBalance _listTileBalance;

  WBalanceCard(this._listTileBalance);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${_listTileBalance.title1}',
                  style: regular.copyWith(
                    color: blackColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: '', decimalDigits: 0)
                      .format(_listTileBalance.value1),
                  style: bold.copyWith(
                    color: blackColor,
                    fontSize: 20,
                  ),
                ),
                // FlutterMoneyFormatter fmf = new FlutterMoneyFormatter(amount: 10000, settings: MoneyFormatterSettings(thousandSeparator: '.', decimalSeparator: ',', symbolAndNumberSeparator: ' ', fractionDigits: 3, compactFormatType: CompactFormatType.short,),),
              ],
            ),
            WVerticalDivider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${_listTileBalance.title2}',
                  style: regular.copyWith(
                    color: blackColor,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                      .format(_listTileBalance.value2),
                  style: bold.copyWith(
                    color: blackColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
