import 'package:app/meets/schedule/meet.dart';
import 'package:app/swimmer/details.dart';
import 'package:flutter/material.dart';

import '../event/event_details.dart';
import '../meets/program.dart';

class SwimmerMeets extends StatefulWidget {
  const SwimmerMeets({super.key});

  @override
  State<SwimmerMeets> createState() => _SwimmerMeetsState();
}

class _SwimmerMeetsState extends State<SwimmerMeets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swimmer\'s meet'),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(('Zhi Ju Ho').toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('SRI KDU SUN BEARS SWIM CLUB',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
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
                                  Text('Male',
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
                          onTap: () =>
                              Navigator.of(context).pushAndRemoveUntil<void>(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    MeetProgram()),
                            ModalRoute.withName('/'),
                          ),
                          child: IntrinsicHeight(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            ('Sportexcel junior swimming circuit 2023')
                                                .toUpperCase(),
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        IntrinsicHeight(
                                          child: Row(
                                            children: const [
                                              Text('Jul 01, 2023 to Jul 02, 2023',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                              VerticalDivider(
                                                thickness: 1,
                                              ),
                                              Text('IPOH, PRK MY',
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Colors.grey)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  color: Colors.grey,
                                )
                              ],
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
