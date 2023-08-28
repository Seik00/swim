import 'package:app/event/event_details.dart';
import 'package:app/meets/schedule/meet.dart';
import 'package:flutter/material.dart';

class SessionSchedule extends StatefulWidget {
  const SessionSchedule({super.key});

  @override
  State<SessionSchedule> createState() => _SessionScheduleState();
}

class _SessionScheduleState extends State<SessionSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session Schedule'),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xff000f9f)),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1st Leg',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                const SizedBox(
                  height: 10,
                ),
                Text(('Sportexcel junior swimming circuit 2023').toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white)),
                const SizedBox(
                  height: 10,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: const [
                      Text('May 14, 2023',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          )),
                      VerticalDivider(thickness: 1, color: Colors.white),
                      Text('8:00',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          )),
                      VerticalDivider(thickness: 1, color: Colors.white),
                      Text('Completed',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.amber,
                            fontWeight: FontWeight.normal,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventDetails())),
                    child: IntrinsicHeight(
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: const [
                                Text('EVENT',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey)),
                                Expanded(
                                  child: FittedBox(
                                      child: Text(
                                    '101',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.grey),
                                  )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Boys 10&U 50 Meter Back',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                IntrinsicHeight(
                                  child: Row(
                                    children: const [
                                      Text('Finals',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                      VerticalDivider(
                                        thickness: 1,
                                      ),
                                      Text('10 and under',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                      VerticalDivider(
                                        thickness: 1,
                                      ),
                                      Text('Completed',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.amber,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventDetails())),
                    child: IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              children: const [
                                Text('EVENT',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey)),
                                Expanded(
                                  child: FittedBox(
                                      child: Text(
                                    '102',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.grey),
                                  )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Girls 10&U 50 Meter Back',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                IntrinsicHeight(
                                  child: Row(
                                    children: const [
                                      Text('Finals',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                      VerticalDivider(
                                        thickness: 1,
                                      ),
                                      Text('10 and under',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                      VerticalDivider(
                                        thickness: 1,
                                      ),
                                      Text('Completed',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.amber,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
