import 'package:flutter/material.dart';

class SingleChildBuilder extends StatelessWidget {
  const SingleChildBuilder({super.key, this.builder, this.child});

  final Widget Function(BuildContext, Widget?)? builder;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    if (builder case final b?) {
      return b(context, child);
    } else {
      return child ?? const SizedBox.shrink();
    }
  }
}
