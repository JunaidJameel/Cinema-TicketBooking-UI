import 'package:cinemabooking/Home_Screen.dart';
import 'package:cinemabooking/Model/poster_Model.dart';
import 'package:cinemabooking/widgets/custom_Clipper.dart';
import 'package:cinemabooking/widgets/dashContainer.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyTickets extends StatelessWidget {
  final PosterModel item;

  const BuyTickets({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
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
        child: Center(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                SizedBox(
                  height: h * 0.76,
                  width: w * 0.9,
                  child: ClipPath(
                    clipper: Clipper(),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: h * 0.05,
                            ),
                            SizedBox(
                              height: h * 0.25,
                              width: w,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: h * 0.3,
                                    width: w * 0.38,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Movie',
                                          style: GoogleFonts.poppins(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          item.title,
                                          style: GoogleFonts.poppins(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(
                                          height: h * 0.05,
                                        ),
                                        Text(
                                          'Time',
                                          style: GoogleFonts.poppins(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '24:00',
                                          style: GoogleFonts.poppins(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: h * 0.35,
                                    width: w * 0.39,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage(item.img),
                                            fit: BoxFit.fill)),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'Date',
                              style: GoogleFonts.poppins(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '15 September,2022',
                              style: GoogleFonts.poppins(
                                  fontSize: 22, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: h * 0.03,
                            ),
                            const MySeparator(
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: h * 0.05,
                            ),
                            Center(
                              child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/4/43/WhatsApp_click-to-chat_QR_code.png',
                                height: h * 0.23,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.34, vertical: h * 0.012),
            child: Text(
              'Home',
              style: GoogleFonts.carterOne(
                letterSpacing: 1,
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
