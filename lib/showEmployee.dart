import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class showEmployees extends StatelessWidget {
  const showEmployees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff06283D),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30, right: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.chevron_left,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Stack(children: [
                      Container(
                        height: 135,
                        width: 320,
                        decoration: BoxDecoration(
                          color: const Color(0xffDFF6FF),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, right: 12, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sachin Singh",
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Color(0xff47B5FF),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Flutter,Figma, Xcode",
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    Icons.navigate_next,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Container(
                        height: 135,
                        width: 320,
                        decoration: BoxDecoration(
                          color: const Color(0xffDFF6FF),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, right: 12, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hemant Sanghvi",
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Color(0xff47B5FF),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Xcode, Swift, Python",
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    Icons.navigate_next,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Container(
                        height: 135,
                        width: 320,
                        decoration: BoxDecoration(
                          color: const Color(0xffDFF6FF),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, right: 12, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Aniket Sharma",
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Color(0xff47B5FF),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Xcode,Flutter,App Testing",
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    Icons.navigate_next,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Container(
                        width: 320,
                        decoration: BoxDecoration(
                          color: const Color(0xffDFF6FF),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, right: 12, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Anubhav Sinha",
                                style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Color(0xff47B5FF),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "React, Website Integration, Node.js, Blockchain",
                                style: GoogleFonts.jost(
                                  textStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    Icons.navigate_next,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
