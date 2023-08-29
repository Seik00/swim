import 'package:app/swimmer/scores.dart';
import 'package:app/teamScore/team.dart';
import 'package:flutter/material.dart';

class Favouritepage extends StatefulWidget {
  const Favouritepage({super.key});

  @override
  State<Favouritepage> createState() => _FavouritepageState();
}

class _FavouritepageState extends State<Favouritepage> {
  List<bool> isStarSelected = List.generate(20, (index) => false);

  Widget _buildColumn(String number, String letter) {
    return Column(
      children: [
        Text(number,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text(letter, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<int> scores = List.generate(1, (index) => 999 - index * 100);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xff000f9f),
          title: const Text('Favourite', style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xff000f9f),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Color(0xff000f9f),
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Colors.white,
                  indicator: BoxDecoration(
                    color: Colors.white,
                  ),
                  tabs: [
                    Tab(text: 'Favourite Swimmers'),
                    Tab(text: 'Favourite Teams'),
                  ],
                ),
              ),
              SizedBox(
                height: 800, // 您可以根据需要调整这个高度
                child: TabBarView(
                  children: [
                    for (int i = 0; i < 2; i++)
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: scores.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              if (i == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SwimmerScores(),
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const TeamPage(),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 26.0,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isStarSelected[index] =
                                                !isStarSelected[index];
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15.0),
                                  if (i == 0)
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('Raeka Ong',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black)),
                                          SizedBox(height: 10),
                                          Text(
                                              'NWSC | Female | 10 | Points: 250'),
                                        ],
                                      ),
                                    )
                                  else
                                    Expanded(
                                      flex: 6,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 6,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'NEW WAVE SWIMMING CLUB ${index + 1}',
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text('NWSC ${index + 1}'),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            flex: 1,
                                            child: Center(
                                              child: Text('${scores[index]}',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color.fromARGB(
                                                          255, 255, 187, 0))),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
