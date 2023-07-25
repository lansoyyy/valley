import 'package:flutter/material.dart';

import '../widgets/text_widget.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

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
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextBold(
                                  text: 'Mac Laboratory',
                                  fontSize: 28,
                                  color: Colors.white),
                              const SizedBox(
                                width: 50,
                              ),
                              TextBold(
                                  text: 'BSIT 3B',
                                  fontSize: 28,
                                  color: Colors.white),
                              const SizedBox(
                                width: 50,
                              ),
                              TextBold(
                                  text: 'Monday 8:30AM - 4:30PM',
                                  fontSize: 28,
                                  color: Colors.white),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
