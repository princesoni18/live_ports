import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 12,right: 12,top: 12),
    child: Center(

      child:ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1400),
        child: child),
    ),
    );
  }
}