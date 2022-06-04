import 'package:carsregister/modules/domain/mobx_state/register_state.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/car_list_view.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  void initState() {
    registerState.updateCarList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CarListView(),
    );
  }
}
