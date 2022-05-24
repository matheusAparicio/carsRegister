import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({ Key? key }) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .8,
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
          return Container(
            height: 75,
            margin: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border: Border.all()
            )
          );
        })
      ),
    );
  }
}