import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumah_pangan/pages/Main/home.dart';
import 'package:rumah_pangan/pages/Main/saved.dart';
import 'package:rumah_pangan/pages/Provider/bottom_navbar_provider.dart';
import 'package:rumah_pangan/pages/Provider/home_provider.dart';
import 'package:rumah_pangan/themes/theme.dart';
import 'package:rumah_pangan/widget/Navbar/bottom_navbar.dart';

const bool isProduction = bool.fromEnvironment('dart.vm.product');
void main() {
  if (isProduction) {
    debugPrint = (String message, {int wrapWidth}) {};
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rumah Pangan Kita',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.deepPurple,
          centerTitle: true,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.deepPurple,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
      ),
      // home: HomeScreen(),
      initialRoute: HomeScreen.route,
      routes: {
        DashboardBottomNavigationBar.route: (context) => MultiProvider(
              providers: [
                ChangeNotifierProvider<BottomNavigationBarProvider>(
                  create: (context) => BottomNavigationBarProvider(),
                ),
                ChangeNotifierProvider<HomeProvider>(
                  create: (context) => HomeProvider(),
                ),
              ],
              child: DashboardBottomNavigationBar(),
            ),

        HomeScreen.route: (context) => ChangeNotifierProvider<HomeProvider>(
              create: (context) => HomeProvider(),
              child: HomeScreen(),
            ),

  
      },
    );
  }
}

