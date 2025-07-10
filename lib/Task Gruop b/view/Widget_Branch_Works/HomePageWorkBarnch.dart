import 'package:flutter/material.dart';

class Homepageworkbarnch extends StatefulWidget {
  const Homepageworkbarnch({
    super.key,
    this.image = '',
    this.UserName = 'UserName',
  });
  final String image;
  final String UserName;

  @override
  State<Homepageworkbarnch> createState() => _HomepageworkbarnchState();
}

class _HomepageworkbarnchState extends State<Homepageworkbarnch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Row(
                children: [
                  // Icon of user  or image
                  CircleAvatar(
                    backgroundImage: widget.image.isEmpty
                        ? null
                        : AssetImage(widget.image),
                    backgroundColor: Colors.red,
                  ),
                  // User name
                  Column(
                    children: [Text(widget.UserName), Text(" Let go Shop")],
                  ),
                  // Icon of search
                  SizedBox(width: 85),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  SizedBox(width: 10),
                  Icon(Icons.notifications),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
