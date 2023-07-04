import 'package:flutter/material.dart';
import 'package:lazy_loading_list_view/default_list/model/list_model.dart';

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

  /*
   Moving count @state to the parent view present within ListItemWidget as its getting reassigned to initial state '0'
   ..this happens when ever list items are unloaded (hide away from user view/screen) and reloaded when scrolling back again to view
   ... view should not be responsible of state of app, should be separated 
  */

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
