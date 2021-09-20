import 'dart:js';

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rumah_pangan/pages/Provider/bottom_navbar_provider.dart';

List<SingleChildStatelessWidget> providers = [
  ...independentServices,
  ...dependentServices,
];

List<SingleChildStatelessWidget> independentServices = [
  ChangeNotifierProvider(create: (context) => BottomNavigationBarProvider()),

];

List<SingleChildStatelessWidget> dependentServices = [];

abstract class BaseProvider implements SingleChildStatelessWidget {}