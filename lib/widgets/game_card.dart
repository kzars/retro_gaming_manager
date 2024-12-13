import 'package:flutter/material.dart';
import '../models/game.dart';
import '../screens/game_details_screen.dart';

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: game.coverUrl != null
            ? Image.network(
                game.coverUrl!,
                width: 48,
                height: 48,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.videogame_asset),
              )
            : const Icon(Icons.videogame_asset),
        title: Text(game.title),
        subtitle: Text('${game.platform} (${game.year})'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GameDetailsScreen(game: game),
            ),
          );
        },
      ),
    );
  }
} 