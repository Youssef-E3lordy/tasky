import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StateUserAuth extends StatelessWidget {
  StateUserAuth({
    super.key,
    this.onTap,
    required this.title,
    required this.subTitle,
  });
  String title;
  String subTitle;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          text: title,
          style: TextStyle(
            fontSize: 13,
            fontWeight: .w400,
            color: Color(0xff000000),
          ),
          children: [
            TextSpan(
              text: subTitle,
              style: TextStyle(color: Color(0xffff3951)),
            ),
          ],
        ),
      ),
    );
  }
}
