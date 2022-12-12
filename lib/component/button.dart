import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      this.type = ButtonType.primary,
      // ButtonType Primary, Primari Icon, Secondary, Secondary Icon
      this.height = 50,
      this.width = double.infinity,
      required this.onPressed,
      this.text = "Button",
      this.borderRadius = 30,
      // ButtonType Text
      this.onTap,
      this.textStyle,
      // ButtonType Icon
      this.icon = Icons.home,
      this.icons,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.mainaxisAlignment = MainAxisAlignment.center,
      this.space = 10});

  final double height;
  final double width;
  final ButtonType type;
  final VoidCallback? onPressed;
  final String? text;
  final double borderRadius;
  final GestureTapCallback? onTap;
  final TextStyle? textStyle;
  final IconData? icon;
  final Icon? icons;
  final MainAxisAlignment mainaxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final double space;

  @override
  Widget build(BuildContext context) {
    return type == ButtonType.primary
        ? _type1()
        : type == ButtonType.second
            ? _type2()
            : type == ButtonType.primaryIcon
                ? _type3()
                : type == ButtonType.secondIcon
                    ? _type4()
                    : type == ButtonType.text
                        ? _type5()
                        : _type6();
  }

  Widget _type1() {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: secondC,
              shadowColor: secondC,
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius))),
          child: Center(
            child: Text('$text', style: text18regwhite),
          )),
    );
  }

  Widget _type2() {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: whiteC,
              shadowColor: secondC,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              )),
          child: Center(
            child: Text('$text', style: text18regBlack),
          )),
    );
  }

  Widget _type3() {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: secondC,
              shadowColor: secondC,
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius))),
          child: Row(
            mainAxisAlignment: mainaxisAlignment,
            children: [
              Icon(icon),
              SizedBox(width: space),
              Text('$text', style: text18regwhite),
            ],
          )),
    );
  }

  Widget _type4() {
    return GestureDetector(
      onTap: onTap,
      child: Icon(icon),
    );
  }

  Widget _type5() {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        '$text',
        style: textStyle,
      ),
    );
  }

  Widget _type6() {
    return GestureDetector(
      onTap: onTap,
      child: Icon(icon),
    );
  }
}

enum ButtonType { primary, second, primaryIcon, secondIcon, text, icon }
