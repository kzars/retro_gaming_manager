class Game {
  final String title;
  final String platform;
  final int year;
  final String? coverUrl;

  Game({
    required this.title,
    required this.platform,
    required this.year,
    this.coverUrl,
  });
} 