class Player {
  final String name;
  int age;
  String country;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        age = playerJson['age'],
        country = playerJson['country'];

  void sayHello() {
    print("hello $name nice to meet you");
  }
}

void main() {
  var apiData = [
    {
      "name": 'yun',
      "age": 12,
      "country": 'korea',
    },
    {
      "name": 'lynn',
      "age": 12,
      "country": 'korea',
    },
    {
      "name": 'one',
      "age": 12,
      "country": 'korea',
    },
  ];
  apiData.forEach((element) {
    var player = Player.fromJson(element);
    player.sayHello();
  });
}
