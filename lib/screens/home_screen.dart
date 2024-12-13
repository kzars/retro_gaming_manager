import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/game_provider.dart';
import '../widgets/game_card.dart';
import '../widgets/empty_state.dart';
import 'add_game_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Retro Games'),
      ),
      body: Consumer<GameProvider>(
        builder: (context, gameProvider, child) {
          if (gameProvider.games.isEmpty) {
            return const EmptyState();
          }
          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: gameProvider.games.length,
            itemBuilder: (context, index) {
              final game = gameProvider.games[index];
              return GameCard(game: game);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddGameScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 