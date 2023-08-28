import 'package:app/swimmer/scores.dart';
import 'package:flutter/material.dart';

class SwimmerList extends StatefulWidget {
  const SwimmerList({super.key});

  @override
  State<SwimmerList> createState() => _SwimmerListState();
}

class _SwimmerListState extends State<SwimmerList> {
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
    List<int> scores = List.generate(20, (index) => 999 - index * 100);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff000f9f),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('Swimmers', style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: scores.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SwimmerScores(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
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
                                isStarSelected[index]
                                    ? Icons.star
                                    : Icons.star_border,
                                color: const Color(0xff000f9f),
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
                        Expanded(
                          flex: 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Noah Abdul Rizal ${index + 1}',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.black)),
                              const SizedBox(height: 10),
                              const Text('NWSC | Male | 10 | Points: 250'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
