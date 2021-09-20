import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rumah_pangan/static/string_asset.dart';
import 'package:rumah_pangan/static/string_const.dart';
import 'package:rumah_pangan/widget/card/w_card_carousel.dart';
import 'package:rumah_pangan/widget/list_tile.dart';

class WCarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            items: [
              WCardCarousel(
                ListTileCarousel(imageUrl: STRImage.img1),
                ListTextCarousel(
                  title: STRCarouselTitle.title1,
                  desc: STRCarouselDesc.desc1,
                ),
              ),
              WCardCarousel(
                ListTileCarousel(imageUrl: STRImage.img2),
                ListTextCarousel(
                  title: STRCarouselTitle.title2,
                  desc: STRCarouselDesc.desc2,
                ),
              ),
              WCardCarousel(
                ListTileCarousel(imageUrl: STRImage.img3),
                ListTextCarousel(
                  title: STRCarouselTitle.title3,
                  desc: STRCarouselDesc.desc3,
                ),
              ),
            ],
            options: CarouselOptions(
              height: 170,
              enlargeCenterPage: false,
              aspectRatio: 16 / 9,
              disableCenter: true,
              enableInfiniteScroll: false,
              autoPlay: true,
              autoPlayInterval: Duration(
                seconds: 3,
              ),
              autoPlayAnimationDuration: Duration(
                milliseconds: 800,
              ),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
            ),
          ),

          Row(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}
