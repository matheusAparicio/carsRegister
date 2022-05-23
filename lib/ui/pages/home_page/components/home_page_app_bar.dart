import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageAppBar extends StatefulWidget {
  final double appBarHeight;
  const HomePageAppBar({Key? key, required this.appBarHeight})
      : super(key: key);

  @override
  State<HomePageAppBar> createState() => _HomePageAppBarState();
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: widget.appBarHeight,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 98, 87, 255),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                // Título e subtítulo
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mobicar",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Aluguéis de carros na palma de sua mão",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              )
            ]));
  }
}
