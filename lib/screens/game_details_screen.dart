import 'package:flutter/material.dart';
import '../models/game.dart';

class GameDetailsScreen extends StatelessWidget {
  final Game game;

  const GameDetailsScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (game.coverUrl != null)
              Center(
                child: Image.network(
                  game.coverUrl!,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 16),
            Text('Platform: ${game.platform}'),
            Text('Release Year: ${game.year}'),
          ],
        ),
      ),
    );
  }
} 