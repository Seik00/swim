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
        appBar: AppBar(
          title: const Text('Meets'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
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
                          color: selected == index ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color:
                                selected == index ? Colors.blue : Colors.grey,
                          )),
                      child: Text(
                        typeOption[index],
                        style: TextStyle(
                            color:
                                selected == index ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, int i) {
                      return Container(
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(224, 228, 227, 1)),
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
                            Text(
                                ('Sportexcel junior swimming circuit 2023')
                                    .toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('SHAH ALAM, SEL MY',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
