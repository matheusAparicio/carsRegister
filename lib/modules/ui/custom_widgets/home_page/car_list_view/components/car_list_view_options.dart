import 'package:carsregister/modules/database/cars_database.dart';
import 'package:carsregister/modules/domain/mobx_state/query_state.dart';
import 'package:carsregister/modules/domain/mobx_state/register_state.dart';
import 'package:carsregister/modules/ui/custom_widgets/general/confirmation_dialog.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/add_car_dialog/add_car_dialog.dart';
import 'package:carsregister/modules/ui/pages/home_page/home_page.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:flutter/material.dart';

class CarListViewOptions extends StatefulWidget {
  final int carListIndex;
  const CarListViewOptions({Key? key, required this.carListIndex})
      : super(key: key);

  @override
  State<CarListViewOptions> createState() => _CarListViewOptionsState();
}

class _CarListViewOptionsState extends State<CarListViewOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () async {
          await registerState.loadCarValues(
              carBrandCode: queryState.carList[widget.carListIndex]
                  ["carBrandCode"],
              carBrandName: queryState.carList[widget.carListIndex]
                  ["carBrandName"],
              carModelCode: queryState.carList[widget.carListIndex]
                  ["carModelCode"],
              carModelName: queryState.carList[widget.carListIndex]
                  ["carModelName"],
              carYearCode: queryState.carList[widget.carListIndex]
                  ["carYearCode"],
              carYearName: queryState.carList[widget.carListIndex]
                  ["carYearName"],
              carFipe: queryState.carList[widget.carListIndex]["carFipe"],
              billingMethod: queryState.carList[widget.carListIndex]
                  ["billingMethod"],
              billingValue: queryState.carList[widget.carListIndex]
                  ["billingValue"],
              isGasCharged: queryState.carList[widget.carListIndex]
                  ["isGasCharged"]);
          await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AddCarDialog(
                    purpose: "update",
                    carId: queryState.carList[widget.carListIndex]["carId"]);
              }).then((value) {
            registerState.resetValues();
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width * .7,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors().primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * .05),
              Text("Editar",
                  style: AppTextStyles()
                      .mainTextStyle(color: AppColors().primaryTextColor)),
              SizedBox(
                width: MediaQuery.of(context).size.width * .05,
                child:
                    Icon(Icons.settings, color: AppColors().primaryTextColor),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 5),
      GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return ConfirmationDialog(
                  confirmationMessage:
                      "Você tem certeza que deseja excluir o veículo selecionado?",
                  confirmationAction: () {
                    CarsDatabase().deleteCar(
                        carId: queryState.carList[widget.carListIndex]
                            ["carId"]);
                    queryState.updateCarList();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                );
              });
        },
        child: Container(
          width: MediaQuery.of(context).size.width * .7,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors().redColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * .05),
              Text("Remover",
                  style: AppTextStyles()
                      .mainTextStyle(color: AppColors().primaryTextColor)),
              SizedBox(
                width: MediaQuery.of(context).size.width * .05,
                child: Icon(Icons.delete, color: AppColors().primaryTextColor),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
