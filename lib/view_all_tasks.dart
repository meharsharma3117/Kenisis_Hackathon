import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class viewTasks extends StatelessWidget {
  const viewTasks({Key? key}) : super(key: key);

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
                                "Talk to sangeeta",
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
                                "Due Tommorow",
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
                      const Positioned(
                          top: 5,
                          right: 5,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 15,
                          )),
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
                                "Work on splash",
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
                                "Due 4th October",
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
                      const Positioned(
                          top: 5,
                          right: 5,
                          child: CircleAvatar(
                            backgroundColor: Colors.yellow,
                            radius: 15,
                          )),
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
                                "Meet with sanket",
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
                                "Due 4th October",
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
                      const Positioned(
                          top: 5,
                          right: 5,
                          child: CircleAvatar(
                            backgroundColor: Colors.yellow,
                            radius: 15,
                          )),
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
                                "New skyle model",
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
                                "Due 21st October",
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
                      const Positioned(
                          top: 5,
                          right: 5,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 15,
                          )),
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
