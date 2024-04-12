import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'app_colors.dart';

class Global {
  static toastUnavailableFeature(
      {required BuildContext context})
  {
    Fluttertoast.showToast(
        msg: "This feature is not available",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        //timeInSecForIosWeb: 1,
        backgroundColor: AppColors.primary.withOpacity(.7),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}