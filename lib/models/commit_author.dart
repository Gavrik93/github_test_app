class CommitAuthor {
  CommitAuthor({this.name, this.email, this.dateTime});

  String name;
  String email;
  DateTime dateTime;

  factory CommitAuthor.fromJson(Map<String, dynamic> json) => CommitAuthor(
      name: json['name'],
      email: json['email'],
      dateTime: DateTime.parse(json['date']));

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'email': email,
        'date': dateTime.toIso8601String(),
      };
}
