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
      list.add(ListItemWidget(model: ListModel(count: 0)));
    }
    return ListView.builder(
        itemCount: list.length, itemBuilder: (context, index) => list[index]);
  }
}

