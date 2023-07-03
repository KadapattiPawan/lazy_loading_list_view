class ListModel {
  int count;

  ListModel({
    required this.count,
  });

  int increaseCounter() {
    count++;
    return count;
  }
}
