class Data {
  int id;
  String name;
  String color;
  int year;
  String pantoneValue;

  Data(this.id, this.name, this.color, this.year, this.pantoneValue);

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(json['id'], json['name'], json['color'], json['year'],
        json['pantone_value']);
  }
}
