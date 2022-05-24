import 'package:flutter/material.dart';
import 'package:santos/helpers/responsiveness.dart';
import 'package:santos/widgets/large_screen.dart';
import 'package:santos/widgets/small_screen.dart';
import 'package:santos/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  // final SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(
            largeScreen: LargeScreen(), smallScreen: SmallScreen()));
  }
}
