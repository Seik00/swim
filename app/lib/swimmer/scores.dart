import 'package:app/meets/schedule/meet.dart';
import 'package:app/swimmer/details.dart';
import 'package:flutter/material.dart';

import '../event/event_details.dart';

class SwimmerScores extends StatefulWidget {
  const SwimmerScores({super.key});

  @override
  State<SwimmerScores> createState() => _SwimmerScoresState();
}

class _SwimmerScoresState extends State<SwimmerScores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swimmer'),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xff000f9f)),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        color: Colors.amber,
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Text('POINTS',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 6.0),
                                child: FittedBox(
                                    child: Text(
                                  '0.0',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(('Raeka Ong').toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            const SizedBox(
                              height: 5,
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: const [
                                  Text('DSA',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  VerticalDivider(
                                      thickness: 1, color: Colors.white),
                                  Text('10',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey[300],
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: const Center(
                child: Text(
              'FULL SCHEDULE',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, int i) {
                    return Column(
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
                                    children: [
                                      const Spacer(),
                                      const Text('EVENT',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey)),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          constraints: BoxConstraints(
                                              maxWidth: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  10),
                                          child: FittedBox(
                                              child: Text(
                                            '10${i}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w900,
                                                color: Colors.grey),
                                          )),
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            VerticalDivider(
                                              thickness: 1,
                                            ),
                                            Text('0-10',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
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
                                      IntrinsicHeight(
                                        child: Row(
                                          children: const [
                                            Text('45.96',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            VerticalDivider(
                                              thickness: 1,
                                            ),
                                            Text('Place: 27',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: const [
                                            Text('Time improvement: ',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            Text('-1.61',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Divider(),
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
