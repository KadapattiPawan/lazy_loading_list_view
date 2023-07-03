import 'package:flutter/material.dart';
import 'package:lazy_loading_list_view/default_list/model/list_model.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    for (var i = 0; i <= 100; i++) {
      list.add(ListItemWidget(model: ListModel(count: 0)));
    }
    return ListView.builder(
        itemCount: list.length, itemBuilder: (context, index) => list[index]);
  }
}

class ListItemWidget extends StatefulWidget {
  final ListModel model;

  const ListItemWidget({
    super.key,
    required this.model,
  });
  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
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
              widget.model.count.toString(),
              style: Theme.of(context).textTheme.headlineSmall,
            ))),
            MaterialButton(
              color: Theme.of(context).primaryColorDark,
              onPressed: () {
                setState(() {
                  widget.model.increaseCounter();
                });
              },
              child:
                  Text("+", style: Theme.of(context).textTheme.headlineSmall),
            )
          ],
        ));
  }
}
