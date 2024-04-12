import 'package:flutter/material.dart';


const List<String> list = <String>['Male', 'Female'];

RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
String mathFunc(Match match) => '${match[1]},';
