import 'package:cinemabooking/Detail_Screen.dart';
import 'package:cinemabooking/Model/poster_Model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PosterWidget extends StatelessWidget {
  final PosterModel items;
  final int index;
  const PosterWidget({super.key, required this.index, required this.items});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Hero(
          tag: items.img,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(itme: items, actorslist: items.actorList),
                  ));
            },
            child: Container(
              height: h * 0.50,
              width: w * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(items.img), fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        SizedBox(
          height: h * 0.03,
        ),
        Text(
          items.title,
          style: GoogleFonts.kanit(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
              color: Color.fromARGB(255, 255, 94, 0)),
        ),
        const SizedBox(
          height: 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Genre: ',
              style: GoogleFonts.kanit(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                  color: Colors.white),
            ),
            Text(
              items.eunra,
              style: GoogleFonts.kanit(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5,
                  color: Colors.white),
            ),
          ],
        ),
        // Text(
        //   items.discription,
        //   style: GoogleFonts.lato(
        //       fontSize: 20,
        //       fontWeight: FontWeight.w400,
        //       letterSpacing: 1.5,
        //       color: Colors.grey),
        // ),
      ],
    );
  }
}
