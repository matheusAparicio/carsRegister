import 'package:carsregister/modules/domain/mobx_state/query_state.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/car_list_view/car_list_view.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Center(
        child: queryState.carList.isNotEmpty
            ? const CarListView()
            : Text(
                "Nenhum carro cadastrado.",
                style: AppTextStyles().mainTextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
      );
    });
  }
}
