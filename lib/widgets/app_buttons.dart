import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

class AppButtons extends StatefulWidget {
  final Color color;
  final Color backgroundcolor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool isIcon;
  bool isSelected = false;

  AppButtons(
      {Key? key,
      this.text = " ",
      this.icon,
      required this.color,
      required this.backgroundcolor,
      required this.size,
      required this.borderColor,
      this.isIcon = false});

  @override
  State<AppButtons> createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons> {
  void toggleIcon() {
    setState(() {
      widget.isSelected = !widget.isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
            border: Border.all(color: widget.borderColor, width: 1.0),
            borderRadius: BorderRadius.circular(15),
            color: widget.backgroundcolor),
        child: widget.isIcon == false
            ? Center(
                child: AppText(
                  text: widget.text!,
                  color: widget.color,
                ),
              )
            : Center(
                child: GestureDetector(
                onTap: toggleIcon,
                child: Center(
                  child: Icon(
                    widget.icon,
                    color: widget.isSelected ? Colors.red : widget.color,
                  ),
                ),
              )));
  }
}
