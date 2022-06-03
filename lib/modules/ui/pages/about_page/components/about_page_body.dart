import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPageBody extends StatefulWidget {
  const AboutPageBody({Key? key}) : super(key: key);

  @override
  State<AboutPageBody> createState() => _AboutPageBodyState();
}

class _AboutPageBodyState extends State<AboutPageBody> {

  TextStyle textStyle({FontWeight weight=FontWeight.w400, double fontSize=16}) {
    return GoogleFonts.roboto(
              fontSize: fontSize,
              fontWeight: weight,
            );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              text: "Criado por Matheus Aparicio da Silva\n",
              children: <TextSpan>[
                TextSpan(text: "Estudante de Ciência da Computação na UFSC", style: textStyle()),
                const TextSpan(text: ""),
              ],
            ),
            style: textStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1
          ),
          Text.rich(
            TextSpan(
              text: "Os principais packages utilizados foram:\n",
              children: <TextSpan>[
                TextSpan(text: "Mobx ", style: textStyle(weight: FontWeight.w500)),
                const TextSpan(text: "para gestão de estado;\n"),
                TextSpan(text: "SQFlite ", style: textStyle(weight: FontWeight.w500)),
                const TextSpan(text: "para persistência de dados;\n"),
                TextSpan(text: "Http ", style: textStyle(weight: FontWeight.w500)),
                const TextSpan(text: "requisição de dados da API;\n"),
                TextSpan(text: "Lottie ", style: textStyle(weight: FontWeight.w500)),
                const TextSpan(text: "para a animação da splashscreen &\n"),
                TextSpan(text: "GoogleFonts ", style: textStyle(weight: FontWeight.w500)),
                const TextSpan(text: "para personalização de textos."),
              ],
            ),
            style: textStyle(),
            textAlign: TextAlign.center,
          ),

          /*
          """Os principais packages utilizados foram:
Mobx para gestão de estado;
SQFlite para persistência de dados;
Http para requisição de dados da API;
Lottie para a animação da splashscreen &
GoogleFonts para personalização de textos.""",
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
            */
        ],
      ),
    );
  }
}
