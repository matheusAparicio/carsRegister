import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:flutter/material.dart';

class CarListViewOptions extends StatefulWidget {
  const CarListViewOptions({Key? key}) : super(key: key);

  @override
  State<CarListViewOptions> createState() => _CarListViewOptionsState();
}

class _CarListViewOptionsState extends State<CarListViewOptions> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
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
              child: Icon(Icons.settings, color: AppColors().primaryTextColor),
            ),
          ],
        ),
      ),
      const SizedBox(height: 5),
      Container(
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
      )
    ]);
  }
}
