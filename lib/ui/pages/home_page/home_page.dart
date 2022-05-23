import 'package:carsregister/ui/pages/home_page/components/home_page_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double appBarHeight = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: HomePageAppBar(appBarHeight: appBarHeight),
        preferredSize: Size.fromHeight(appBarHeight),
      ),
    );
  }
}
