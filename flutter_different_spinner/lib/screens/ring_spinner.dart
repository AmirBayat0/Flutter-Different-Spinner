// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class RingSpinner extends StatelessWidget {
  const RingSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpinKitRing(
            color: Colors.black,
            size: 50.0,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Loading...",
            style: TextStyle(
              fontSize: 23,
              color: Color(0xff040307),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
