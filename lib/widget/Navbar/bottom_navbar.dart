import 'package:flutter/material.dart';
import 'package:rumah_pangan/pages/Main/cart.dart';
import 'package:rumah_pangan/pages/Main/home.dart';
import 'package:rumah_pangan/pages/Main/profile.dart';
import 'package:rumah_pangan/pages/Main/saved.dart';
import 'package:provider/provider.dart';
import 'package:rumah_pangan/pages/Provider/bottom_navbar_provider.dart';
import 'package:rumah_pangan/static/string_asset.dart';

enum NavigationBar {
  home,
  saved,
  cart,
  profile,
}

class DashboardBottomNavigationBar extends StatefulWidget {
  static const String route = 'DashboardBottomNavigationBar';

  final NavigationBar navigateTo;

  const DashboardBottomNavigationBar({
    Key key,
    this.navigateTo = NavigationBar.home,
  }) : super(key: key);

  @override
  _DashboardBottomNavigationBarState createState() =>
      _DashboardBottomNavigationBarState();
}

class _DashboardBottomNavigationBarState
    extends State<DashboardBottomNavigationBar> {
  final List<Widget> listOfPages = <Widget>[
    HomeScreen(),
    SavedPage(),
    CartPage(),
    ProfilePage(),
  ];

  void initState() {
    Future.delayed(
      Duration.zero,
      () {
        final DashboardBottomNavigationBar args =
            ModalRoute.of(context).settings.arguments;
        Provider.of<BottomNavigationBarProvider>(context, listen: false)
            .onSelectPage(args?.navigateTo?.index ?? widget?.navigateTo?.index);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomNavigationBarProvider>(
        builder: (context, provider, _) => listOfPages[provider.currentIndex],
      ),
      bottomNavigationBar: Consumer<BottomNavigationBarProvider>(
        builder: (context, provider, _) => BottomNavigationBar(
          elevation: 10,
          currentIndex: provider.currentIndex,
          onTap: provider.onSelectPage,
          items: <BottomNavigationBarItem>[
            //Home
            BottomNavigationBarItem(
              label: 'Home',
              icon: new Image.asset(STRAssetIcon.home),
            ),

            //Saved
            BottomNavigationBarItem(
              label: 'Saved',
              icon: new Image.asset(STRAssetIcon.saved),
            ),

            //Cart
            BottomNavigationBarItem(
              label: 'Cart',
              icon: new Image.asset(STRAssetIcon.cart),
            ),

            //Profile
            BottomNavigationBarItem(
              label: 'Profile',
              icon: new Image.asset(STRAssetIcon.profile),
            ),
          ],
        ),
      ),
    );
  }
}
