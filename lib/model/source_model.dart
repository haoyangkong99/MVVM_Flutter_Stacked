class Source {
  String id, name;
  Source({required this.id, required this.name});

  factory Source.fromJson(Map<dynamic, dynamic> map) {
    return Source(id: map['id'], name: map['name']);
  }
}
