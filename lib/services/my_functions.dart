import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToastError(msg) {
  Fluttertoast.showToast(msg: msg, toastLength: Toast.LENGTH_LONG, backgroundColor: Colors.red.shade400);
}