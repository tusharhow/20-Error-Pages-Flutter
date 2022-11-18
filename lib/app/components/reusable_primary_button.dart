import 'package:flutter/material.dart';

class ReusablePrimaryButton extends StatelessWidget {
  const ReusablePrimaryButton({
    Key? key,
    required this.childText,
    required this.onPressed,
    required this.buttonColor,
    required this.childTextColor,
  }) : super(key: key);

  final String childText;
  final Function onPressed;
  final Color buttonColor;
  final Color childTextColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed as VoidCallback,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: buttonColor,
        ),
        child: Center(
            child: Text(
          childText.toUpperCase(),
          style: TextStyle(
            fontSize: 16,
            color: childTextColor,
            fontWeight: FontWeight.w600,
          ),
        )),
      ),
    );
  }
}
