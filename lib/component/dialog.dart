import 'package:flutter/material.dart';

class DialogAlertModern extends StatefulWidget {
  const DialogAlertModern(
      {super.key,
      this.icon,
      this.title = 'Delete?',
      this.subTitle = 'are sure delete?',
      this.cencelText = 'Cencel',
      this.actionText = 'Delete',
      this.backColor = Colors.white,
      this.cencelButton = const Color.fromARGB(255, 0, 86, 225),
      this.actionButton = const Color.fromARGB(255, 216, 14, 0),
      this.textStyle,
      this.titleStyle,
      this.subStyle,
      this.buttonStyle,
      required this.onPressCencel,
      required this.onPressAction});

  final Widget? icon;
  final String? title;
  final String? subTitle;
  final String? cencelText;
  final String? actionText;
  final Color? backColor;
  final Color? cencelButton;
  final Color? actionButton;
  final TextStyle? textStyle;
  final TextStyle? titleStyle;
  final TextStyle? subStyle;
  final TextStyle? buttonStyle;
  final VoidCallback? onPressCencel;
  final VoidCallback? onPressAction;

  @override
  State<DialogAlertModern> createState() => _DialogAlertState();
}

class _DialogAlertState extends State<DialogAlertModern> {
  @override
  Widget build(BuildContext context) {
    double hightDevice = MediaQuery.of(context).size.height;
    double widthDevice = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: hightDevice * 0.2,
              width: widthDevice * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: widget.backColor),
            ),
            Positioned(
                top: -33,
                left: 50,
                right: 50,
                child: Container(
                  height: 66,
                  width: 66,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: widget.backColor),
                )),
            Positioned(
                top: -38,
                left: 50,
                right: 50,
                child: SizedBox(
                  height: 76,
                  width: 76,
                  child: Center(
                    child: widget.icon,
                  ),
                )),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: widthDevice * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        '${widget.title}',
                        style: widget.titleStyle,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        '${widget.subTitle}',
                        style: widget.subStyle,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: widthDevice * 0.75,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 5,
                              child: GestureDetector(
                                onTap: widget.onPressCencel,
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: widget.cencelButton,
                                  ),
                                  child: Center(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Text('${widget.cencelText}',
                                          style: widget.buttonStyle),
                                    ),
                                  ),
                                ),
                              )),
                          const SizedBox(width: 10),
                          Expanded(
                              flex: 5,
                              child: GestureDetector(
                                onTap: widget.onPressAction,
                                child: Container(
                                  height: 40,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: widget.actionButton,
                                  ),
                                  child: Center(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: Text('${widget.actionText}',
                                          style: widget.buttonStyle),
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
