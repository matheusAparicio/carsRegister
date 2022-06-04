import 'package:carsregister/modules/ui/pages/about_page/components/about_page_app_bar.dart';
import 'package:carsregister/modules/ui/pages/about_page/components/about_page_body.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  double appBarHeight = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: AboutPageAppBar(appBarHeight: appBarHeight),
          preferredSize: Size.fromHeight(appBarHeight),
        ),
        body: const AboutPageBody());
  }
}
