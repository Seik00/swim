import 'package:app/meets/program.dart';
import 'package:app/swimmer/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selected = 0;
  List<String> typeOption = ['Last Viewed', 'Near me', 'My favourite'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: AppBar(),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff000f9f),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.pool,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Find your swimmers',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: List.generate(
                      typeOption.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                              color: selected == index
                                  ? Colors.amber
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: selected == index
                                    ? Colors.amber
                                    : Colors.grey,
                              )),
                          child: Text(
                            typeOption[index],
                            style: TextStyle(
                                color: selected == index
                                    ? Colors.black
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      elevation: 3,
                      margin: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.search),
                          ),
                          Expanded(
                            child: TextField(
                              onSubmitted: (value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SwimmerList(value)));
                              },
                              style: const TextStyle(fontSize: 12),
                              decoration: const InputDecoration(
                                hintText: "Search",
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 10),
                                isDense: true,
                                fillColor: Colors.white,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Meets',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Expanded(
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: selected == 1 ? 2 : 1,
                          itemBuilder: (context, int i) {
                            return GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MeetProgram())),
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        const Color.fromRGBO(224, 228, 227, 1)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.calendar_month),
                                        Text(
                                          'May 13, 2023 to May 14, 2023',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    if (selected == 0)
                                      Text(
                                          ('Sportexcel junior swimming circuit 2023')
                                              .toUpperCase(),
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600))
                                    else if (selected == 1)
                                      if (i == 0)
                                        Text(
                                            ('7th Novice Swim Meet 2023')
                                                .toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600))
                                      else
                                        Text(
                                            ('Sportexcel ASUM/NSC/MILO 2023')
                                                .toUpperCase(),
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600))
                                    else
                                      Text(
                                          ('Sportexcel ASUM/NSC/MILO 2023')
                                              .toUpperCase(),
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text('SHAH ALAM, SEL MY',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
