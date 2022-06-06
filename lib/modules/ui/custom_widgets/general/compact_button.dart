import 'package:auto_size_text/auto_size_text.dart';
import 'package:carsregister/modules/ui/custom_widgets/home_page/add_car_dialog/add_car_dialog.dart';
import 'package:carsregister/modules/ui/utilities/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CompactButton extends StatefulWidget {
  final double width;
  final double height;
  final String buttonName;
  final IconData buttonIcon;
  final dynamic onTap;
  final double minFontSize;
  final double maxFontSize;
  final int maxLines;
  final Color color;
  const CompactButton({
    Key? key,
    required this.width,
    required this.height,
    required this.buttonName,
    required this.buttonIcon,
    this.onTap,
    this.minFontSize = 8,
    this.maxFontSize = 15,
    this.maxLines = 2,
    this.color = Colors.white,
    
  }) : super(key: key);

  @override
  State<CompactButton> createState() => _CompactButtonState();
}

class _CompactButtonState extends State<CompactButton> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: SizedBox(
          width: widget.height,
          height: widget.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(widget.buttonIcon, color: widget.color, size: 30),
              AutoSizeText(
                widget.buttonName,
                style: AppTextStyles().mainTextStyle(color: widget.color),
                textAlign: TextAlign.center,
                minFontSize: widget.maxFontSize,
                maxFontSize: widget.maxFontSize,
                maxLines: widget.maxLines,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
