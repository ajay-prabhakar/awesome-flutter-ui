import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

enum AlertType { success, error, warning }

class AlertService {
  void showAlert({
    @required String message,
    @required AlertType type,
    @required BuildContext context,
  }) {
    Flushbar(
      title: _chooseTitle(type),
      message: message,
      icon: Icon(
        _chooseIcon(type),
        size: 28.0,
        color: Colors.white,
      ),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.GROUNDED,
      reverseAnimationCurve: Curves.decelerate,
      forwardAnimationCurve: Curves.elasticOut,
      backgroundColor: _chooseColor(type),
      isDismissible: false,
      duration: Duration(seconds: 3),
    )..show(context);
  }

  Color _chooseColor(AlertType type) {
    if (type == AlertType.success) {
      return Colors.green;
    } else if (type == AlertType.error) {
      return Colors.red;
    } else {
      return Colors.orange;
    }
  }

  String _chooseTitle(AlertType type) {
    if (type == AlertType.success) {
      return "Success!!!";
    } else if (type == AlertType.error) {
      return "Error!!!";
    } else {
      return "Warning!!!";
    }
  }

  IconData _chooseIcon(AlertType type) {
    if (type == AlertType.success) {
      return Icons.check_circle_outline;
    } else if (type == AlertType.error) {
      return Icons.error_outline;
    } else {
      return Icons.info_outline;
    }
  }
}