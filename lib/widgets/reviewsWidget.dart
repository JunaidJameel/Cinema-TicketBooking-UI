import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  final String reviews;
  const ReviewWidget({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    //var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: w * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 54, 48, 48),
            Color.fromARGB(255, 114, 112, 112),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 109, 100, 78).withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          reviews,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
