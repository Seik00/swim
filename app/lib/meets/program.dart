import 'package:app/meets/schedule/meet.dart';
import 'package:flutter/material.dart';

class MeetProgram extends StatefulWidget {
  const MeetProgram({super.key});

  @override
  State<MeetProgram> createState() => _MeetProgramState();
}

class _MeetProgramState extends State<MeetProgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meet Programs'),
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
                const SizedBox(
                  height: 10,
                ),
                const Text('May 13, 2023 to May 14, 2023',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('LOCATION',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('PADE',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white)),
                          SizedBox(
                            height: 5,
                          ),
                          Text('SHAH ALAM SEL 40000, MY',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white)),
                        ],
                      ),
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
                  ListTile(
                    onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const MeetSchedule())),
                    leading: const Icon(
                      Icons.calendar_today,
                      color: Colors.amber,
                      size: 30,
                    ),
                    title: const Text('Events',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: const Text('View the meet schedule and results',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.pool,
                      color: Colors.amber,
                      size: 30,
                    ),
                    title: Text('Swimmers',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: Text('Find swimmers and follow favourite',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.waves,
                      color: Colors.amber,
                      size: 30,
                    ),
                    title: Text('Teams',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: Text('Track your team\'s progress',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.workspace_premium,
                      color: Colors.amber,
                      size: 30,
                    ),
                    title: Text('Team Scores',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: Text('View the overall results of the meet',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        )),
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
