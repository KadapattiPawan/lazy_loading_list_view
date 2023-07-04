import 'package:flutter/material.dart';
import 'package:lazy_loading_list_view/core/util/constants.dart';
import 'package:lazy_loading_list_view/default_list/model/list_model.dart';
import 'package:lazy_loading_list_view/default_list/widget/list_item.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    for (var i = 0; i <= listViewCount; i++) {
      /*
      ListItemWidget is dependent of ListModel which holds count(state)
      ..irrespective of how many times a widget tree is re-built, the model state is maintained.
      ...so we can create multiple instances with different states and add them to the same parent container
      ....and they will be rendered as per their respective models' data without any issue
      */
      list.add(ListItemWidget(model: ListModel(count: 0)));
    }
    return ListView.builder(
        itemCount: list.length, itemBuilder: (context, index) => list[index]);
  }
}
