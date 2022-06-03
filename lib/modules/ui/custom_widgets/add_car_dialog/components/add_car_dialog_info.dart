import 'package:auto_size_text/auto_size_text.dart';
import 'package:carsregister/modules/domain/mobx_state/register_state.dart';
import 'package:carsregister/modules/domain/model/car_brand_entity.dart';
import 'package:carsregister/modules/domain/model/car_model_entity.dart';
import 'package:carsregister/modules/domain/model/car_year_entity.dart';
import 'package:carsregister/modules/ui/custom_widgets/dropdown_text.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCarDialogInfo extends StatefulWidget {
  const AddCarDialogInfo({Key? key}) : super(key: key);

  @override
  State<AddCarDialogInfo> createState() => _AddCarDialogInfoState();
}

class _AddCarDialogInfoState extends State<AddCarDialogInfo> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Fabricante:",
                style: GoogleFonts.roboto(
                  color: AppColors().secondaryTextColor,
                ),
              ),
              DropdownButton(
                  value: registerState.dropdownBrandValue,
                  items: registerState.dropdownBrandItems
                      .map((CarBrandEntity item) {
                    return DropdownMenuItem(
                        value: item.codigo,
                        child: DropdownText(name: item.nome));
                  }).toList(),
                  onChanged: (String? newValue) {
                    registerState.dropdownBrandValue = newValue!;
                    registerState.getCarModels(brandCode: newValue);
                  }),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Modelo:",
                style: GoogleFonts.roboto(
                  color: AppColors().secondaryTextColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: DropdownButton(
                    value: registerState.dropdownModelValue,
                    items: registerState.dropdownModelItems
                        .map((CarModelEntity item) {
                      return DropdownMenuItem(
                          value: item.codigo.toString(),
                          child: DropdownText(name: item.nome));
                    }).toList(),
                    onChanged: (String? newValue) {
                      registerState.dropdownModelValue = newValue!;
                      registerState.getCarYears(
                          brandCode: registerState.dropdownBrandValue,
                          modelCode: newValue);
                      registerState.getCarFipe(
                          brandCode: registerState.dropdownBrandValue,
                          modelCode: newValue,
                          yearCode: registerState.dropdownYearValue);
                    }),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Ano:",
                style: GoogleFonts.roboto(
                  color: AppColors().secondaryTextColor,
                ),
              ),
              DropdownButton(
                  value: registerState.dropdownYearValue,
                  items:
                      registerState.dropdownYearItems.map((CarYearEntity item) {
                    return DropdownMenuItem(
                        value: item.codigo,
                        child: DropdownText(name: item.nome));
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      registerState.dropdownYearValue = newValue!;
                      registerState.getCarFipe(
                          brandCode: registerState.dropdownBrandValue,
                          modelCode: registerState.dropdownModelValue,
                          yearCode: newValue);
                    });
                  }),
            ],
          ),
          Column(
            children: [
              Text(
                "Valor FIPE:",
                style: GoogleFonts.roboto(
                  color: AppColors().secondaryTextColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                registerState.carFipeValue,
                style: GoogleFonts.roboto(
                  color: AppColors().secondaryTextColor,
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
