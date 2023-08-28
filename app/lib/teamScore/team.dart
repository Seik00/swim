import 'package:flutter/material.dart';

class TeamPage extends StatefulWidget {
  const TeamPage({super.key});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  List<bool> isStarSelected = List.generate(20, (index) => false);

  Widget _buildColumn(String number, String letter) {
    return Column(
      children: [
        Text(number,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(letter, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<int> scores = List.generate(10, (index) => 999 - index * 100);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff000f9f),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('Team', style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: const Color(0xff000f9f),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'NEW WAVE SWIMMING CLUB',
                        style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'NWSC',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              TabBar(
                labelColor: const Color(0xff000f9f),
                unselectedLabelColor: Colors.grey,
                indicatorColor: const Color(0xff000f9f),
                tabs: [
                  Tab(text: 'BOTH'),
                  Tab(text: 'MEN'),
                  Tab(text: 'WOMEN'),
                ],
              ),
              Container(
                color: const Color.fromARGB(255, 202, 202, 202),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Team Scores'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildColumn('-', 'Combined'),
                    _buildColumn('156', 'Women'),
                    _buildColumn('996', 'Men'),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 202, 202, 202),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Swimmers'),
                  ),
                ),
              ),
              // 使用 SizedBox 代替 Expanded 以适应 SingleChildScrollView
              SizedBox(
                height: 800,  // 您可以根据需要调整这个高度
                child: TabBarView(
                  children: [
                    for (int i = 0; i < 3; i++)
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: scores.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TeamPage(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: IconButton(
                                        icon: Icon(
                                          isStarSelected[index] ? Icons.star : Icons.star_border,
                                          color: Color(0xff000f9f),
                                          size: 26.0,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isStarSelected[index] = !isStarSelected[index];
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.0),
                                  Expanded(
                                    flex: 6,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Noah Abdul Rizal ${index + 1}', style: const TextStyle(fontSize: 16, color: Colors.black)),
                                        SizedBox(height: 10),
                                        const Text('NWSC | Male | 10 | Points: 250'),
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
