import 'package:flutter/material.dart';

class BackButtonHandler extends StatelessWidget {
  final Widget child;

  const BackButtonHandler({required this.child});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // // Perform your custom actions here
        // // Return true to allow the app to close, or false to prevent it
        // // from closing

        // // Navigate to the previous route if possible
        // Navigator.of(context).maybePop();

        // // Return false to prevent the app from closing immediately
        return false;
      },
      child: child,
    );
  }
}
