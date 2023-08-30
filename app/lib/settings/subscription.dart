import 'package:flutter/material.dart';

class Subscriptionpage extends StatefulWidget {
  const Subscriptionpage({super.key});

  @override
  State<Subscriptionpage> createState() => _SubscriptionpageState();
}

class _SubscriptionpageState extends State<Subscriptionpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(239, 239, 237, 1),
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Image(
          image: AssetImage('lib/assets/images/subscription.png'),
          fit: BoxFit.fitHeight,
        ));
  }
}
