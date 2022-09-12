class Pokemon {
  final int id;
  final String name;
  final List<String> type;
  final int pv;
  final int atk;
  final int def;
  final int atkspe;
  final int defspe;
  final int speed;

  Pokemon({
    required this.id,
    required this.name,
    required this.type,
    required this.pv,
    required this.atk,
    required this.def,
    required this.atkspe,
    required this.defspe,
    required this.speed,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      type: json['type'].cast<String>(),
      pv: json['pv'],
      atk: json['atk'],
      def: json['def'],
      atkspe: json['atkspe'],
      defspe: json['defspe'],
      speed: json['speed'],
    );
  }
}
