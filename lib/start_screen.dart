import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(199, 250, 247, 239),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter The Fun Way !',
            style: GoogleFonts.lato(
              color: Colors.white70,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
