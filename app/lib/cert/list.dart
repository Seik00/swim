import 'package:app/cert/cert.dart';
import 'package:flutter/material.dart';

class CertList extends StatefulWidget {
  const CertList({super.key});

  @override
  State<CertList> createState() => _CertListState();
}

class _CertListState extends State<CertList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Certifications'),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CertPage('Certification ${index+1}'),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0),
                    child: Row(
                      children: [
                        Center(
                          child: IconButton(
                            icon: const Icon(
                              Icons.workspace_premium,
                              color: Color(0xff000f9f),
                              size: 26.0,
                            ),
                            onPressed: () {
                            },
                          ),
                        ),
                        const SizedBox(width: 15.0),
                        Expanded(
                          flex: 6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Certification ${index+1}',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black)),
                              const SizedBox(height: 10),
                              IntrinsicHeight(
                                child: Row(
                                  children: const [
                                    Text('May 13, 2023',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                        )),
                                    VerticalDivider(
                                        thickness: 1, color: Colors.grey),
                                    Text('8:00',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right)
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
