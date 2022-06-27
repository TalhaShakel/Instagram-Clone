import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimenstion.dart';

class responsive_layout extends StatelessWidget {
  final Widget webscreenLayout;
  final Widget mobilescreenLayout;
  const responsive_layout(
      {Key? key,
      required this.webscreenLayout,
      required this.mobilescreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return webscreenLayout;
        }
        return mobilescreenLayout;
      },
    );
  }
}
