import 'package:app/meets/schedule/meet.dart';
import 'package:app/swimmer/details.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
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
                            Text('EVENT',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical:6.0),
                                child: FittedBox(
                                    child: Text(
                                  '101',
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
                            vertical: 10.0, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(('Girls 10&U 50 Meter Back'),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            const SizedBox(
                              height: 5,
                            ),
                            IntrinsicHeight(
                              child: Row(
                                children: const [
                                  Text('11 heats',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                      )),
                                  VerticalDivider(
                                      thickness: 1, color: Colors.white),
                                  Text('1098 swimmers',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.amber,
                                        fontWeight: FontWeight.normal,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text('8:00',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                )),
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
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Center(child: Text('Finals - Results (Unofficial)')),
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
                            builder: (context) => const SwimDetails())),
                    child: IntrinsicHeight(
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: const [
                                Text('Place',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey)),
                                Expanded(
                                  child: FittedBox(
                                      child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black),
                                  )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Raeka Ong',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  IntrinsicHeight(
                                    child: Row(
                                      children: const [
                                        Text('DSA',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            )),
                                        VerticalDivider(
                                          thickness: 1,
                                        ),
                                        Text('10',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            )),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text('Dropped: -1.65',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.greenAccent[700],
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('35.01',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('TIME',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: const [
                              Text('Place',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey)),
                              Expanded(
                                child: FittedBox(
                                    child: Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Aedon Wei Zhe Lim',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const SizedBox(
                                  height: 2,
                                ),
                                IntrinsicHeight(
                                  child: Row(
                                    children: const [
                                      Text('PSC',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                      VerticalDivider(
                                        thickness: 1,
                                      ),
                                      Text('10',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text('Added: +0.34',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.redAccent[700],
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('35.01',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text('TIME',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
