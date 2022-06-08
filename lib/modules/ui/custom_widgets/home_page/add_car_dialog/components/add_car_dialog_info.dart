import 'package:carsregister/modules/domain/mobx_state/register_state.dart';
import 'package:carsregister/modules/domain/mobx_state/preferences_state.dart';
import 'package:carsregister/modules/domain/model/car_brand_entity.dart';
import 'package:carsregister/modules/domain/model/car_model_entity.dart';
import 'package:carsregister/modules/domain/model/car_year_entity.dart';
import 'package:carsregister/modules/ui/custom_widgets/general/dropdown_text.dart';
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
                  color: preferencesState.secondaryTextColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: DropdownButton(
                    isExpanded: true,
                    dropdownColor: preferencesState.secondaryColor,
                    iconEnabledColor: preferencesState.secondaryTextColor,
                    iconDisabledColor: AppColors().greyColor,
                    value: registerState.dropdownBrandValue[0],
                    items: registerState.dropdownBrandItems
                        .map((CarBrandEntity item) {
                      return DropdownMenuItem(
                          value: item.codigo,
                          child: DropdownText(name: item.nome),
                          onTap: () {
                            registerState.dropdownBrandValue[1] = item.nome;
                          });
                    }).toList(),
                    onChanged: (String? newValue) {
                      registerState.dropdownBrandValue[0] = newValue!;
                      registerState.getCarModels(brandCode: newValue);
                    }),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Modelo:",
                style: GoogleFonts.roboto(
                  color: preferencesState.secondaryTextColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: DropdownButton(
                    isExpanded: true,
                    dropdownColor: preferencesState.secondaryColor,
                    value: registerState.dropdownModelValue[0],
                    items: registerState.dropdownModelItems
                        .map((CarModelEntity item) {
                      return DropdownMenuItem(
                          value: item.codigo.toString(),
                          child: DropdownText(name: item.nome),
                          onTap: () {
                            registerState.dropdownModelValue[1] = item.nome;
                          });
                    }).toList(),
                    onChanged: (String? newValue) {
                      registerState.dropdownModelValue[0] = newValue!;
                      registerState.getCarYears(
                          brandCode: registerState.dropdownBrandValue[0],
                          modelCode: newValue);
                      registerState.getCarFipe(
                          brandCode: registerState.dropdownBrandValue[0],
                          modelCode: newValue,
                          yearCode: registerState.dropdownYearValue[0]);
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
                  color: preferencesState.secondaryTextColor,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: DropdownButton(
                  isExpanded: true,
                    dropdownColor: preferencesState.secondaryColor,
                    value: registerState.dropdownYearValue[0],
                    items:
                        registerState.dropdownYearItems.map((CarYearEntity item) {
                      return DropdownMenuItem(
                        value: item.codigo,
                        child: DropdownText(name: item.nome),
                        onTap: () {
                          registerState.dropdownYearValue[1] = item.nome;
                        },
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        registerState.dropdownYearValue[0] = newValue!;
                        registerState.getCarFipe(
                            brandCode: registerState.dropdownBrandValue[0],
                            modelCode: registerState.dropdownModelValue[0],
                            yearCode: newValue);
                      });
                    }),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Valor FIPE:",
                style: GoogleFonts.roboto(
                  color: preferencesState.secondaryTextColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                registerState.carFipeValue,
                style: GoogleFonts.roboto(
                  color: preferencesState.secondaryTextColor,
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
