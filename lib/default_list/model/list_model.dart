/*
model class with count
by creating model class 
- logic is separated from view, as view should not know any app logic
- new change in logic can be easily accommodated as its in one place
.. ex: way it increments/ way its stored 
*/

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
