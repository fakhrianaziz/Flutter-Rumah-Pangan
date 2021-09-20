import 'package:flutter/material.dart';
import 'package:rumah_pangan/pages/Feature/Fitur%20&%20Layanan/kelola_stok.dart';
import 'package:rumah_pangan/pages/Feature/Fitur%20&%20Layanan/laporan_penjualan.dart';
import 'package:rumah_pangan/pages/Feature/Fitur%20&%20Layanan/pemesanan.dart';
import 'package:rumah_pangan/pages/Feature/Fitur%20&%20Layanan/penjualan.dart';
import 'package:rumah_pangan/pages/Feature/Transaksi/menunggu_pembayaran.dart';
import 'package:rumah_pangan/pages/Feature/Transaksi/pesanan_diproses.dart';
import 'package:rumah_pangan/pages/Feature/Transaksi/sampai_tujuan.dart';
import 'package:rumah_pangan/pages/Feature/Transaksi/sedang_dikirim.dart';
import 'package:rumah_pangan/pages/Main/notification.dart';
import 'package:rumah_pangan/static/string_asset.dart';
import 'package:rumah_pangan/static/string_const.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/card/w_card_map.dart';
import 'package:rumah_pangan/widget/list_tile.dart';
import 'package:rumah_pangan/widget/card/w_card_balance.dart';
import 'package:rumah_pangan/widget/w_carousel.dart';
import 'package:rumah_pangan/widget/w_custom_shape.dart';
import 'package:rumah_pangan/widget/w_feature.dart';
import 'package:rumah_pangan/widget/w_profil_head.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          Stack(
            children: [
              WBackgorund(),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WProfilHead(
                            ListTileProfile(
                              title: 'Hi',
                              name: 'RPK Gatsu',
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotifPage(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.notifications_none_rounded,
                              color: whiteColor,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      WBalanceCard(
                        ListTileBalance(
                          title1: 'Point Anda',
                          title2: 'Total Pembelian',
                          value1: 10000,
                          value2: 35558080,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            STRLabel.transaksi,
                            style: bold.copyWith(
                              color: blackColor,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FTungguBayar(),
                                        ),
                                      );
                                    },
                                    child: WFeatureBox(
                                      ListTileFeature(
                                        imageUrl: STRAssetIcon.wallet,
                                        desc: STRFitur.tungguBayar,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              FPesananDiproses(),
                                        ),
                                      );
                                    },
                                    child: WFeatureBox(
                                      ListTileFeature(
                                        imageUrl: STRAssetIcon.delivery1,
                                        desc: STRFitur.pesananDiproses,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              FSedangDikirim(),
                                        ),
                                      );
                                    },
                                    child: WFeatureBox(
                                      ListTileFeature(
                                        imageUrl: STRAssetIcon.delivery2,
                                        desc: STRFitur.sedangDikirim,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FSampaiTujuan(),
                                        ),
                                      );
                                    },
                                    child: WFeatureBox(
                                      ListTileFeature(
                                        imageUrl: STRAssetIcon.pinMap,
                                        desc: STRFitur.sampaiTujuan,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            STRLabel.fiturLayanan,
                            style: bold.copyWith(
                              color: blackColor,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FPemesanan(),
                                        ),
                                      );
                                    },
                                    child: WFeatureBox(
                                      ListTileFeature(
                                        imageUrl: STRAssetIcon.shoppingCart,
                                        desc: STRFitur.pemesanan,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FPenjualan(),
                                        ),
                                      );
                                    },
                                    child: WFeatureBox(
                                      ListTileFeature(
                                        imageUrl: STRAssetIcon.moneyGrowth,
                                        desc: STRFitur.penjualan,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FKelolaStok(),
                                        ),
                                      );
                                    },
                                    child: WFeatureBox(
                                      ListTileFeature(
                                        imageUrl: STRAssetIcon.listItem,
                                        desc: STRFitur.stok,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              FLaporanPenjualan(),
                                        ),
                                      );
                                    },
                                    child: WFeatureBox(
                                      ListTileFeature(
                                        imageUrl: STRAssetIcon.report,
                                        desc: STRFitur.report,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            STRLabel.gallery,
                            style: bold.copyWith(
                              color: blackColor,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          WCarouselSlider(),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            STRLabel.lokasi,
                            style: bold.copyWith(
                              color: blackColor,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          WMapCard(
                            ListMapDummy(
                              imageUrl: STRMap.mapDummy,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
