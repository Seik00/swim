import 'package:app/meets/schedule/meet.dart';
import 'package:app/meets/schedule/session.dart';
import 'package:flutter/material.dart';

class MeetSchedule extends StatefulWidget {
  const MeetSchedule({super.key});

  @override
  State<MeetSchedule> createState() => _MeetScheduleState();
}

class _MeetScheduleState extends State<MeetSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meet Schedule'),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xff000f9f)),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(('Sportexcel junior swimming circuit 2023').toUpperCase(),
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: [
                  ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SessionSchedule())),
                    title: const Text('1st Leg',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: IntrinsicHeight(
                      child: Row(
                        children: const [
                          Text('May 13, 2023',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              )),
                          VerticalDivider(
                            thickness: 1,
                          ),
                          Text('8:00',
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
                  ),
                  ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SessionSchedule())),
                    title: const Text('1st Leg',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: IntrinsicHeight(
                      child: Row(
                        children: const [
                          Text('May 14, 2023',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              )),
                          VerticalDivider(
                            thickness: 1,
                          ),
                          Text('8:00',
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
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
