import 'package:flutter/material.dart';

class SplitScreen extends StatelessWidget {
  const SplitScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
              flex: 7,
              child: Container(
                color: Colors.yellow,
              )),
        ]),
        Positioned(
          top: screenSize.height / 4,
          left: screenSize.width / 2,
          child: const Icon(Icons.time_to_leave),
        )
      ],
    );
  }
}
