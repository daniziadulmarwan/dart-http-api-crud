import 'dart:convert';

void main() {
  // String objText = '{"name": "bezkoder", "age": 30}';

  // NOTE: CREATE LIST OF OBJECT
  var animals = [
    {'id': 1, 'name': 'Anoa', 'leg': 4},
    {'id': 2, 'name': 'Boar', 'leg': 4},
    {'id': 2, 'name': 'Chicken', 'leg': 2},
  ];

  // var c = jsonDecode(objText);

  //NOTE: CONVERT TO LIST
  var hewans = animals.map((e) => Animal.fromJson(e)).toList();

  hewans.forEach((element) {
    print(element.name);
    print(element.leg);
    print('===============================');
  });
}

class Animal {
  int id;
  String name;
  int leg;

  Animal(this.id, this.name, this.leg);

  factory Animal.fromJson(Map<String, dynamic> json) {
    return Animal(json['id'], json['name'], json['leg']);
  }
}

// class Person {
//   String name;
//   int age;

//   Person(this.name, this.age);

//   factory Person.fromJson(Map<String, dynamic> object) {
//     return Person(object['name'], object['age']);
//   }
// }
