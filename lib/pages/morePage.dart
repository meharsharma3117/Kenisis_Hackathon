import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class morePage extends StatelessWidget {
  const morePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06283D),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 40, bottom: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "We’ve Got More 🥰",
                  style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: Color(0xff47B5FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Icon(
                              Icons.star_border_outlined,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Feedback",
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.navigate_next_rounded,
                        size: 30,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ), //first option //feedback
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: Color(0xff47B5FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Icon(
                              Icons.brightness_5_outlined,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Surrounding",
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.navigate_next_rounded,
                        size: 30,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ), //second option //surrounding
              const SizedBox(
                height: 35,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: Color(0xff47B5FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Icon(
                              Icons.insert_emoticon_sharp,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Mental Health",
                            style: GoogleFonts.jost(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.navigate_next_rounded,
                        size: 30,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ), //third option //mental health
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
