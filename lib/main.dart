import 'package:e_comerce/pages/details_page.dart';
import 'package:e_comerce/pages/home.dart';
import 'package:e_comerce/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp( ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  ));
}
