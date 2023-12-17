import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

enum MessageType { success, fail, warning }

void showToast(String msg, {MessageType type = MessageType.fail}) {
  if (msg.isNotEmpty) {
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: getMsgColor(type),
      content: Text(msg),
      behavior: SnackBarBehavior.floating,
    ));
  }
}

void removeFocus(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);

  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}

Color getMsgColor(MessageType type) {
  switch (type) {
    case MessageType.fail:
      return Colors.red;
    case MessageType.success:
      return const Color(0xff4C8613);
    case MessageType.warning:
      return Colors.yellow;
  }
}
