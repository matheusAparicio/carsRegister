import 'package:carsregister/modules/domain/mobx_state/preferences_state.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:flutter/material.dart';

class AboutPageBody extends StatefulWidget {
  const AboutPageBody({Key? key}) : super(key: key);

  @override
  State<AboutPageBody> createState() => _AboutPageBodyState();
}

class _AboutPageBodyState extends State<AboutPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding:
          EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * .05),
      color: preferencesState.secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              text: "Criado por ",
              children: <TextSpan>[
                TextSpan(
                  text: "Matheus Aparicio da Silva\n",
                  style: AppTextStyles().mainTextStyle(
                      fontSize: 20,
                      color: preferencesState.secondaryTextColor,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                    text: "Estudante de Ciência da Computação na UFSC",
                    style: AppTextStyles().mainTextStyle(
                        color: preferencesState.secondaryTextColor)),
                const TextSpan(text: ""),
              ],
            ),
            style: AppTextStyles().mainTextStyle(
                fontSize: 20, color: preferencesState.secondaryTextColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .1),
          Text.rich(
            TextSpan(
              text: "Os principais packages utilizados foram:\n\n",
              children: <TextSpan>[
                TextSpan(
                    text: "Mobx ",
                    style: AppTextStyles().mainTextStyle(
                        fontWeight: FontWeight.w500,
                        color: preferencesState.secondaryTextColor)),
                const TextSpan(text: "para gestão de estado;\n\n"),
                TextSpan(
                    text: "SQFlite ",
                    style: AppTextStyles().mainTextStyle(
                        fontWeight: FontWeight.w500,
                        color: preferencesState.secondaryTextColor)),
                const TextSpan(text: "para persistência de dados;\n\n"),
                TextSpan(
                    text: "Http ",
                    style: AppTextStyles().mainTextStyle(
                        fontWeight: FontWeight.w500,
                        color: preferencesState.secondaryTextColor)),
                const TextSpan(text: "requisição de dados da API;\n\n"),
                TextSpan(
                    text: "Lottie ",
                    style: AppTextStyles().mainTextStyle(
                        fontWeight: FontWeight.w500,
                        color: preferencesState.secondaryTextColor)),
                const TextSpan(text: "para a animação da splashscreen;\n\n"),
                TextSpan(
                    text: "GoogleFonts ",
                    style: AppTextStyles().mainTextStyle(
                        fontWeight: FontWeight.w500,
                        color: preferencesState.secondaryTextColor)),
                const TextSpan(text: "para personalização de textos &\n\n"),
                TextSpan(
                    text: "Intl ",
                    style: AppTextStyles().mainTextStyle(
                        fontWeight: FontWeight.w500,
                        color: preferencesState.secondaryTextColor)),
                const TextSpan(
                    text:
                        "para filtrar campos com padrões personalizados.\n\n"),
                TextSpan(
                    text: "PermissionHandler ",
                    style: AppTextStyles().mainTextStyle(
                        fontWeight: FontWeight.w500,
                        color: preferencesState.secondaryTextColor)),
                const TextSpan(
                    text:
                        "para solicitar o acesso ao armazenamento do smartphone."),
              ],
            ),
            style: AppTextStyles()
                .mainTextStyle(color: preferencesState.secondaryTextColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
