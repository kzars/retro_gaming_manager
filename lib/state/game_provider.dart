import 'package:flutter/foundation.dart';
import '../models/game.dart';

class GameProvider with ChangeNotifier {
  final List<Game> _games = [];

  List<Game> get games => _games;

  void addGame(Game game) {
    _games.add(game);
    notifyListeners();
  }
} 