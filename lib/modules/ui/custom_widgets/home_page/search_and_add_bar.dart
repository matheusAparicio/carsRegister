import 'package:carsregister/modules/domain/mobx_state/query_state.dart';
import 'package:carsregister/modules/domain/mobx_state/preferences_state.dart';
import 'package:carsregister/modules/ui/utilities/app_colors.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:flutter/material.dart';

class SearchAndAddBar extends StatefulWidget {
  const SearchAndAddBar({Key? key}) : super(key: key);

  @override
  State<SearchAndAddBar> createState() => _SearchAndAddBarState();
}

class _SearchAndAddBarState extends State<SearchAndAddBar> {
  double searchBarHeight = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * .025),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: MediaQuery.of(context).size.width * .85,
            height: searchBarHeight,
            transformAlignment: Alignment.topCenter,
            decoration: queryState.showSearchAndAdd
                ? BoxDecoration(
                    border: Border(
                        left: BorderSide(
                            color: preferencesState.secondaryTextColor),
                        right: BorderSide(
                            color: preferencesState.secondaryTextColor),
                        bottom: BorderSide(
                            color: preferencesState.secondaryTextColor)))
                : const BoxDecoration(),
            child: queryState.showSearchAndAdd
                ? TextFormField(
                    controller: queryState.searchBarController,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: preferencesState.secondaryTextColor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Pesquisar",
                      hintStyle: AppTextStyles()
                          .mainTextStyle(color: AppColors().greyColor),
                    ),
                    onChanged: (value) {
                      queryState.searchCarList(searchString: value);
                    },
                  )
                : null,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                queryState.showSearchAndAdd = !queryState.showSearchAndAdd;
                if (queryState.showSearchAndAdd) {
                  searchBarHeight = 50;
                } else {
                  searchBarHeight = 0;
                  queryState.searchBarController.text = "";
                  queryState.carListDisplay = queryState.carList;
                }
              });
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .1,
              child: Icon(
                  queryState.showSearchAndAdd
                      ? Icons.keyboard_arrow_up
                      : Icons.search,
                  color: preferencesState.secondaryTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
