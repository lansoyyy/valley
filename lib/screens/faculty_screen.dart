import 'package:flutter/material.dart';
import 'package:valley/utils/routes.dart';

import '../widgets/text_widget.dart';

class FacultyScreen extends StatelessWidget {
  const FacultyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            opacity: 110,
            image: AssetImage(
              'assets/images/back.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 175,
              ),
              TextBold(
                text: 'Available',
                fontSize: 24,
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/avatar.png', height: 200),
                      const SizedBox(
                        height: 20,
                      ),
                      TextBold(
                        text: 'John Doe',
                        fontSize: 38,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextBold(
                        text: 'BSIT 3C @MAC LAB',
                        fontSize: 28,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextBold(
                        text: '7:30AM TO 5:00PM',
                        fontSize: 28,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(100)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, Routes().schedulescreen);
                            },
                            icon: const Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.white,
                              size: 42,
                            ),
                            label: TextBold(
                              text: 'View Schedule',
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(100)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                Routes().availabilityscreen,
                              );
                            },
                            icon: const Icon(
                              Icons.schedule_outlined,
                              color: Colors.white,
                              size: 42,
                            ),
                            label: TextBold(
                              text: 'View Availability',
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, Routes().homescreen);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                      size: 32,
                    ),
                    label: TextBold(
                      text: 'Back',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
