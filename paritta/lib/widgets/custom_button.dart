import 'package:flutter/material.dart';
import '../core/const.dart';

class CustomButton extends StatelessWidget {
  final double size;
  final Widget child;
  final bool isActive;
  final VoidCallback onTap;
  final double borderWidth;

  CustomButton({
    @required this.child,
    @required this.onTap,
    @required this.size,
    this.isActive = false,
    this.borderWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(200),
      ),
      border: Border.all(
        width: borderWidth,
//          color: AppColors.mainColor,
        color: isActive ? AppColors.darkBlue : Colors.white38,
      ),
      boxShadow: [
        BoxShadow(
          color: AppColors.lightBlueShadow,
          blurRadius: 10,
          offset: Offset(5, 5),
          spreadRadius: 3,
        ),
        BoxShadow(
          color: Colors.white70,
          blurRadius: 5,
          offset: Offset(-5, -5),
          spreadRadius: 3,
        ),
      ],
//            Color for the button
//            color: AppColors.mainColor,
    );
    if (isActive) {
      boxDecoration = boxDecoration.copyWith(
        gradient: RadialGradient(
          colors: [
            AppColors.lightBlue,
            AppColors.darkBlue,
          ],
        ),
      );
    } else {
      boxDecoration = boxDecoration.copyWith(
        gradient: RadialGradient(
          colors: [
            AppColors.mainColor,
            AppColors.mainColor,
            AppColors.mainColor,
            Colors.white70,
          ],
        ),
      );
    }
    return Container(
      width: size,
      height: size,
      decoration: boxDecoration,
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(200),
          ),
        ),
        child: child,
      ),
    );
  }
}
