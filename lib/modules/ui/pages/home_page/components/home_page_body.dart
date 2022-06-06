import 'package:carsregister/modules/domain/mobx_state/query_state.dart';
import 'package:carsregister/modules/ui/custom_widgets/general/compact_button.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/car_list_view/car_list_view.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/search_and_add_bar.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
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
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors().secondaryColor,
        child: Stack(
          children: [
            Column(
              children: [
                const SearchAndAddBar(),
                queryState.carList.isNotEmpty
                    ? const Expanded(child: CarListView())
                    : const SizedBox()
              ],
            ),
            queryState.carList.isNotEmpty
                ? const SizedBox()
                : SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Nenhum carro cadastrado.\nQue tal cadastrar um novo no botão indicado?",
                          style: AppTextStyles().mainTextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        CompactButton(
                          width: MediaQuery.of(context).size.width * .15,
                          height: MediaQuery.of(context).size.height * .1,
                          buttonName: "Carro",
                          buttonIcon: Icons.add,
                          color: AppColors().greyColor
                        )
                      ],
                    ),
                  ),
          ],
        ),
      );
    });
  }
}
