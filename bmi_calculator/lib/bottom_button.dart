import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.onTap, required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // ignore: sort_child_properties_last
        child: Center(
          child: Text(
            buttonTitle,
            style: largeButtonTextStyle,
          ),
        ),
        color: bottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: bottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}

class RounIconButton extends StatelessWidget {
  RounIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      onPressed: onPressed,
    );
  }
}
