class Grade {
  final String subject;
  int score;

  Grade({
    required this.subject,
    required this.score,
  });

  // Convert Grade object to Map
  Map<String, dynamic> toMap() {
    return {
      'subject': subject,
      'score': score,
    };
  }

  // Create Grade object from Map
  factory Grade.fromMap(Map<String, dynamic> map) {
    return Grade(
      subject: map['subject'],
      score: map['score'],
    );
  }
}
