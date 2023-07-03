import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    for (var i = 0; i <= 100; i++) {
      list.add(const ListItemWidget());
    }
    return ListView.builder(
        itemCount: list.length, itemBuilder: (context, index) => list[index]);
  }
}

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({super.key});
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Center(
                    child: Text(
              count.toString(),
              style: Theme.of(context).textTheme.headlineSmall,
            ))),
            MaterialButton(
              color: Theme.of(context).primaryColorDark,
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child:
                  Text("+", style: Theme.of(context).textTheme.headlineSmall),
            )
          ],
        ));
  }
}
