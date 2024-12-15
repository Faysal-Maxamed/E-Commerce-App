import 'package:flutter/material.dart';

class chipWidget extends StatelessWidget {
  const chipWidget({
    super.key,
    required this.Tittle
  });

  final String Tittle;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.grey.shade400,
      labelStyle: TextStyle(color: Colors.black),
      shape: const RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      label: Text(Tittle),
    );
  }
}
