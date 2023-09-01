import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CertPage extends StatefulWidget {
  final String certName;
  const CertPage(this.certName, {super.key});

  @override
  State<CertPage> createState() => _CertPageState();
}

class _CertPageState extends State<CertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.certName),
        ),
        body: Container(
          color: Colors.black,
          child: const Center(
            child: Image(
              image: AssetImage('lib/assets/images/swimming.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ));
  }
}
