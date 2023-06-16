import 'package:cinemabooking/BuyTickets.dart';
import 'package:cinemabooking/Model/poster_Model.dart';
import 'package:cinemabooking/Model/seatMdel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectSeat extends StatefulWidget {
  final PosterModel item;

  const SelectSeat({super.key, required this.item});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  int multe = 0;
  List<SeatModel> seatList = [];
  void seat() {
    for (int i = 0; i < 40; i++) {
      seatList.add(SeatModel(isSelected: false, multiple: 0));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    seat();
  }

  bool val = false;

  int selectedDate = -100;
  int selectedTime = -100;

  int selectedSeat = -100;
  List<Map<String, dynamic>> datelist = [
    {
      'day': 'Mon',
      'date': '15-09',
    },
    {
      'day': 'Tue',
      'date': '16-09',
    },
    {
      'day': 'Wed',
      'date': '17-09',
    },
    {
      'day': 'Thr',
      'date': '18-09',
    },
    {
      'day': 'Fri',
      'date': '19-09',
    },
    {
      'day': 'Sat',
      'date': '20-09',
    },
    {
      'day': 'Sun',
      'date': '21-09',
    }
  ];

  List<String> timelist = [
    '12:00',
    '14:00',
    '16:00',
    '18:00',
    '20:00',
    '22:00',
    '24:00',
  ];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
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
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: w * 0.03),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Day',
                    style: GoogleFonts.kanit(
                        letterSpacing: 1,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SizedBox(
                height: h * 0.075,
                width: w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: datelist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDate = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        margin: EdgeInsets.only(left: w * 0.05),
                        width: w * 0.17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: selectedDate == index
                                ? const Color.fromARGB(255, 255, 94, 0)
                                : Colors.grey,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              datelist[index]['day'],
                              style: GoogleFonts.kanit(
                                  color: Colors.white, fontSize: 16.5),
                            ),
                            Text(
                              datelist[index]['date'],
                              style: GoogleFonts.kanit(
                                  color: Colors.white, fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              //
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Time',
                    style: GoogleFonts.kanit(
                        letterSpacing: 1,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.025,
              ),
              SizedBox(
                height: h * 0.045,
                width: w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: timelist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTime = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        margin: EdgeInsets.only(left: w * 0.05),
                        width: w * 0.17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(
                            color: selectedTime == index
                                ? const Color.fromARGB(255, 255, 94, 0)
                                : Colors.grey,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              timelist[index].toString(),
                              style: GoogleFonts.kanit(
                                  color: Colors.white, fontSize: 16.5),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Center(
                child: SizedBox(
                  height: h * 0.1,
                  width: w,
                  child: Stack(
                    children: [
                      Positioned(
                        top: h * 0.022,
                        child: ClipPath(
                          clipper: OvalTopBorderClipper(),
                          child: Container(
                            height: h * 0.04,
                            width: w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: const Color.fromARGB(255, 255, 94, 0),
                              //    borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: ClipPath(
                          clipper: OvalTopBorderClipper(),
                          child: Container(
                            height: h * 0.04,
                            width: w,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromARGB(255, 56, 54, 54),
                                  Colors.grey.shade900,
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: h * 0.02,
                        child: Container(
                          height: h * 0.1,
                          width: w * 0.03,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 40, 38, 38)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // seat
              SizedBox(
                height: h * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.04),
                child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 8,
                  ),
                  itemCount: seatList.length,

                  itemBuilder: (context, index) {
                    print(seatList.length);
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSeat = index;

                              if (selectedSeat == index) {
                                val = true;
                                seatList[index].isSelected =
                                    !seatList[index].isSelected;
                              }
                              seatList[index].isSelected ? multe++ : multe--;
                            });
                          },
                          child: Icon(
                            Icons.chair,
                            color: seatList[index].isSelected == true
                                ? Colors.amber
                                : Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    multe == 0
                        ? 'No Seat Selected'
                        : 'Total Price: \$${multe * widget.item.price}',
                    style: GoogleFonts.kanit(color: Colors.white, fontSize: 35),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: GestureDetector(
        onTap: multe > 0
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuyTickets(
                      item: widget.item,
                    ),
                  ),
                );
              }
            : null,
        child: Container(
          decoration: BoxDecoration(
            color: multe == 0 ? Colors.black : Colors.amber,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.23, vertical: h * 0.01),
            child: Text(
              'Buy Tickets',
              style: GoogleFonts.carterOne(
                letterSpacing: 1,
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
