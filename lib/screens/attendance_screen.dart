import 'package:flutter/material.dart';

import '../utils/routes.dart';
import '../widgets/text_widget.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

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
                Container(
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: DataTable(columns: [
                      DataColumn(
                        label: TextBold(
                            text: 'Date', fontSize: 18, color: Colors.black),
                      ),
                      DataColumn(
                        label: TextBold(
                            text: 'Name', fontSize: 18, color: Colors.black),
                      ),
                      DataColumn(
                        label: TextBold(
                            text: 'Course', fontSize: 18, color: Colors.black),
                      ),
                      DataColumn(
                        label: TextBold(
                            text: 'Section', fontSize: 18, color: Colors.black),
                      ),
                      DataColumn(
                        label: TextBold(
                            text: 'Laboratory',
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      DataColumn(
                        label: TextBold(
                            text: 'Computer',
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      DataColumn(
                        label: TextBold(
                            text: 'Time In', fontSize: 18, color: Colors.black),
                      ),
                      DataColumn(
                        label: TextBold(
                            text: 'Time Out',
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ], rows: [
                      for (int i = 0; i < 100; i++)
                        DataRow(
                          cells: [
                            DataCell(
                              TextRegular(
                                text: '09/23/2023',
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            DataCell(
                              TextRegular(
                                text: 'John Doe',
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            DataCell(
                              TextRegular(
                                text: 'BSIT',
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            DataCell(
                              TextRegular(
                                text: '2A',
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            DataCell(
                              TextRegular(
                                text: 'IT LAB',
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            DataCell(
                              TextRegular(
                                text: i.toString(),
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            DataCell(
                              TextRegular(
                                text: '8:45AM',
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            DataCell(
                              TextRegular(
                                text: '10:45:AM',
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, top: 30),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Routes().landingscreen);
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
      ),
    );
  }
}
