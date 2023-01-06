import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadCustom {
  openLoadMsg(msg) {
    EasyLoading.show(
      status: msg,
    );
  }

  closeLoad() {
    EasyLoading.dismiss();
  }


}
