import 'dart:io';

import 'package:carsregister/modules/ui/pages/home_page/components/home_page_app_bar.dart';
import 'package:carsregister/modules/ui/pages/home_page/components/home_page_body.dart';
import 'package:carsregister/modules/ui/pages/home_page/components/home_page_drawer.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double appBarHeight = 100;

  Future _getStoragePermission() async {
    if (await Permission.storage.request().isPermanentlyDenied) {
      exit(0);
    }
  }

  @override
  void initState() {
    _getStoragePermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: HomePageAppBar(appBarHeight: appBarHeight),
        preferredSize: Size.fromHeight(appBarHeight),
      ),
      drawer: const HomePageDrawer(),
      body: const HomePageBody()
    );
  }
}
