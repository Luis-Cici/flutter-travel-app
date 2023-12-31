import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

// ignore: must_be_immutable
class AppButtons extends StatelessWidget {
  final Color color;
  String? text = "Hi";
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButtons({
    Key? key,
    this.isIcon = false,
    this.text,
    this.icon,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(102, 158, 158, 158),
      ),
      child: isIcon == false
          ? Center(child: AppText(text: text!, color: Colors.black))
          : Center(child: Icon(icon, color: color)),
    );
  }
}
