// ignore_for_file: must_be_immutable

import 'package:cinemabooking/Model/poster_Model.dart';
import 'package:cinemabooking/widgets/posterWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  PageController myfirstpagecontroller =
      PageController(initialPage: 0, viewportFraction: 0.74);
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey.shade800,
              Colors.grey.shade900,
              Colors.black,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: h * 0.005,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                child: Row(
                  children: [
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 32,
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/icons/search.png',
                      height: h * 0.045,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: w * 0.07,
                    ),
                    const CircleAvatar(
                      radius: 38,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwc2lkZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Text(
                    'Trending',
                    style: GoogleFonts.carterOne(
                        letterSpacing: 2,
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.04,
              ),
              SizedBox(
                height: h * 0.67,
                width: w,
                child: PageView.builder(
                  itemCount: PosterModel.posterList.length,
                  physics: const BouncingScrollPhysics(),
                  controller: myfirstpagecontroller,
                  itemBuilder: (context, index) {
                    final item = PosterModel.posterList[index];

                    return carouslaView(index, item);
                  },
                ),
              ),
              Container(
                height: h * 0.08,
                width: w * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/icons/home.png',
                          height: h * 0.03,
                          color: const Color.fromARGB(255, 255, 94, 0)),
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: h * 0.035,
                      ),
                      Image.asset('assets/icons/shopping-cart.png',
                          height: h * 0.03, color: Colors.white),
                      const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              )
            ],
          ),
        ),
      ),
    );
  }

// For Some Scale Animation : Created this widget
  Widget carouslaView(int index, item) {
    return AnimatedBuilder(
      animation: myfirstpagecontroller,
      builder: (context, child) {
        double value = 0.0;
        if (myfirstpagecontroller.position.haveDimensions) {
          value = index.toDouble() - (myfirstpagecontroller.page ?? 0);
          value = (value * 0.09).clamp(-1, 1);
        }
        double scale = 1.0 - value.abs();
        return Transform.scale(
          scale: scale,
          child: PosterWidget(index: index, items: item),
        );
      },
    );
  }
}
