import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenesis_app/descisionPage.dart';
import 'package:kenesis_app/view_all_tasks.dart';

class trackingPage extends StatelessWidget {
  const trackingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06283D),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => viewTasks()));
                },
                child: Container(
                  padding:
                      EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "View all",
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.navigate_next_rounded,
                        size: 30,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 130,
                decoration: BoxDecoration(
                    color: Color(0xff47B5FF),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Next task",
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontStyle: FontStyle.italic,
                              fontSize: 18,
                            )),
                          ),
                          Text(
                            "Talk to sangeeta",
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            )),
                          ),
                          Text(
                            "Due tommorow",
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ), //first instruction block
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xff47B5FF).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 30, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Details",
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                        )),
                      ),
                      Text(
                        "Talk to sangeeta on the issue of ml and try to figure out a common ground.",
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        )),
                      ),
                    ],
                  ),
                ),
              ), //second instruction block
              const SizedBox(
                height: 35,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 30, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Assigned by",
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                        )),
                      ),
                      Text(
                        "Aneerban Saha",
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        )),
                      ),
                    ],
                  ),
                ),
              ), //second instruction block
              const SizedBox(
                height: 35,
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xff256D85),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Raise Issue",
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontStyle: FontStyle.italic,
                            fontSize: 16,
                          )),
                        ),
                      ),
                    ), //second instruction block
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => descisionPage()));
                      },
                      child: Container(
                        width: 140,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xffDFF6FF),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Start Tracking",
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                              color: Color(0xff256D85),
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                            )),
                          ),
                        ),
                      ),
                    ), //second instruction block
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
