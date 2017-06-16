import 'dart:html';

void main() {
  // Name by age - Dart & HTML5 Edition

  // Import input and output boxes into dart
  InputElement getName = querySelector("#get-name");
  InputElement getAge = querySelector("#get-age");
  var output = querySelector('#output');

  // Set reciever variables
  String name;
  int age;

  // Add event listeners for each box
  getName.onChange.listen((_) {
    name = getName.value;
		namePrinter(name, age, output);
  });
  getAge.onChange.listen((_) {
    age = int.parse(getAge.value);
		namePrinter(name, age, output);
  });
}

void namePrinter(name, age, output) {  
    if (name != null && age != null) {
      output.children.clear();
      
      for (var i = 0; i < age; i++) {
        var newName = new ParagraphElement();
        newName.text = name;
        output.children.add(newName);
      }
    }
}
