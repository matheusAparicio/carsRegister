import 'package:carsregister/modules/database/cars_database.dart';
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
    dynamic carsList = CarsDatabase().selectCar();
    print(carsList);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .8,
        child: const CarListView(),
      ),
    );
  }
}
