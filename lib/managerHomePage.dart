import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kenesis_app/showEmployee.dart';
import 'package:kenesis_app/view_all_tasks.dart';

class managerHomePage extends StatelessWidget {
  managerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int task_left = 6;

    int totalTask = 10;

    int assignedTasks = 21;

    return Scaffold(
      backgroundColor: const Color(0xff06283D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: topBar(),
                    padding: EdgeInsets.only(right: 30, left: 30),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => viewTasks()));
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => showEmployees()));
                    },
                    child: Center(
                      child: Container(
                        width: 320,
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color(0xff47B5FF),
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
                                    "Assigned Tasks",
                                    style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20,
                                    )),
                                  ),
                                  Text(
                                    "$assignedTasks",
                                    style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24,
                                    )),
                                  ),
                                ],
                              ),
                              Container(
                                height: 55,
                                width: 55,
                                child: Image.asset(
                                  "assets/images/checklist.png",
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const ongoingSectionManagerHome(),
                const SizedBox(
                  height: 20,
                ),
                const completedTaskSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//********************TOP BAR******************************************//
class topBar extends StatelessWidget {
  const topBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name_of_user = "Sarah";
    String current_time_of_day = "Afternoon";
    String user_image = 'assets/images/manager.jpg';
    String logoImg = "assets/images/logo2.jpg";

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox.fromSize(
              size: Size.square(70), // Image radius
              child: Image.asset("$user_image",
                  alignment: FractionalOffset.topCenter, fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8), // Border width
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: SizedBox.fromSize(
                size: Size.square(55), // Image radius
                child: Image.asset("$logoImg", fit: BoxFit.cover),
              ),
            ),
          ), //Settings
        ],
      ), //Top Bar Row
      const SizedBox(
        height: 20,
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good " + "$current_time_of_day" + ",",
              style: GoogleFonts.jost(
                  textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 20,
              )),
            ),
            Text(
              "$name_of_user",
              style: GoogleFonts.jost(
                  textStyle: TextStyle(color: Colors.white, fontSize: 26)),
            ),
          ],
        ),
      ), //Greeting
      const SizedBox(
        height: 35,
      ),
    ]);
  }
}
//********************************************************************//

////******************** TODOSECTION ******************************************//
class ongoingSectionManagerHome extends StatefulWidget {
  const ongoingSectionManagerHome({Key? key}) : super(key: key);

  @override
  State<ongoingSectionManagerHome> createState() =>
      _ongoingSectionManagerHomeState();
}

class _ongoingSectionManagerHomeState extends State<ongoingSectionManagerHome> {
  int no_of_tasks_left = 4;

  int no_of_ongoing_tasks = 9;

  var taskObj2 = {
    "employee_name": "",
    "task_name": "",
    "task_deadline": "",
    "employee_id": ""
  };

  @override
  Widget build(BuildContext context) {
    taskObj2["employee_name"] = "Mehar";
    taskObj2["task_name"] = "Talk to Sanket";
    taskObj2["employee_id"] = "1203948";
    taskObj2["task_deadline"] = "Due tommorow";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: Row(
            children: [
              Text(
                "Ongoing",
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 40,
                height: 35,
                decoration: BoxDecoration(
                    color: Color(0xff47B5FF),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "3",
                  style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic)),
                )),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 160,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Stack(children: [
                    Container(
                      height: 135,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color(0xffDFF6FF),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 12, top: 10, right: 12, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Talk to sangeeta",
                              style: GoogleFonts.jost(
                                textStyle: TextStyle(
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
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 5,
                        right: 5,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 15,
                        )),
                  ]),
                  Text(
                    "Sachin Singh",
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  Stack(children: [
                    Container(
                      height: 135,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color(0xffDFF6FF),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 12, top: 10, right: 12, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meet with john",
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
                              "Due in 2 days",
                              style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
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
                  Text(
                    "Hemant Sanghvi",
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  Stack(children: [
                    Container(
                      height: 135,
                      width: 170,
                      decoration: BoxDecoration(
                        color: const Color(0xffDFF6FF),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 12, top: 10, right: 12, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              "Due tommorow",
                              style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
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
                  Text(
                    "Sachin Singh",
                    style: GoogleFonts.jost(
                        textStyle: TextStyle(color: Colors.white)),
                  )
                ],
              ),
              const SizedBox(
                width: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
//**************************************************************************//

//**************************COMPLETEDSECTION********************************/
class completedTaskSection extends StatefulWidget {
  const completedTaskSection({Key? key}) : super(key: key);

  @override
  State<completedTaskSection> createState() => _completedTaskSectionState();
}

class _completedTaskSectionState extends State<completedTaskSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Completed",
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                )),
              ),
              const Icon(
                Icons.navigate_next_rounded,
                size: 30,
                color: Colors.white,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 200,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 30,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to Arjun",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                width: 25,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Work on ui/ux",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                width: 25,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to Arjun",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                width: 25,
              ),
              Stack(children: [
                Container(
                  height: 135,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color(0xffDFF6FF),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 12, top: 10, right: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Talk to Arjun",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Color(0xff47B5FF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                width: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//**************************************************************************/
