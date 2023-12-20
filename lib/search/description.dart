import 'package:club_compass/search/clubs.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.club});

  final Club club;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        club.description,
        style: TextStyle(height: 1.5, color: Colors.black),
      ),
    );
  }
}
