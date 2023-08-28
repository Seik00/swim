import 'package:app/teamScore/team.dart';
import 'package:flutter/material.dart';

class TeamList extends StatefulWidget {
  const TeamList({super.key});

  @override
  State<TeamList> createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {
  bool _isAscending = true;

  void _toggleSortOrder() {
    setState(() {
      _isAscending = !_isAscending;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<int> scores = List.generate(10, (index) => 999 - index * 100);
    if (_isAscending) {
      scores.sort((a, b) => a.compareTo(b));
    } else {
      scores.sort((a, b) => b.compareTo(a));
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF164BBB),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('Team Scores', style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                color: const Color(0xFF164BBB),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text('SPORTEXCEL JUNIOR SWIMMING CIRCUIT 2023', style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              TabBar(
                labelColor: const Color(0xFF164BBB),
                unselectedLabelColor: Colors.grey,
                indicatorColor: const Color(0xFF164BBB),
                tabs: [
                  Tab(text: 'MEN'),
                  Tab(text: 'WOMEN'),
                ],
              ),
              Container(
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Team Score'),
                    ),
                    IconButton(
                      icon: Icon(
                        _isAscending ? Icons.arrow_upward : Icons.arrow_downward,
                      ),
                      onPressed: _toggleSortOrder,
                    )
                  ],
                ),
              ),
              ..._buildScoreList(scores),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildScoreList(List<int> scores) {
    return [
      for (int index = 0; index < scores.length; index++)
        GestureDetector(
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
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                          fontSize: 26, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NEW WAVE SWIMMING CLUB ${index + 1}', style: const TextStyle(
                        fontSize: 16, color: Colors.black),),
                      SizedBox(height: 10,),
                      Text('NWSC ${index + 1}'),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Text('${scores[index]}', style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 187, 0))),
                  ),
                ),
              ],
            ),
          ),
        ),
    ];
  }
}
