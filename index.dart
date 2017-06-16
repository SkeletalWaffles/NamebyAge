import 'dart:html';

void main() {
  // Name by age - Dart & HTML5 Edition

  // Import input boxes into dart
  InputElement getName = querySelector("#get-name");
  InputElement getAge = querySelector("#get-age");

  // Set reciever variables
  String name;
  int age;

  // Add event listeners for each box
  getName.onChange.listen((_) {
    name = getName.value;
    if (name != null && age != null) {
      for (var i = 0; i < age; i++) {
        print(name);
      }
    } else {
      print('You haven\'t entered something in all fields yet.');
    }
  });
  getAge.onChange.listen((_) {
    age = int.parse(getAge.value);
    if (name != null && age != null) {
      for (var i = 0; i < age; i++) {
        print(name);
      }
    } else {
      print('You haven\'t entered something in all fields yet.');
    }
  });
}
