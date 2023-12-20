import 'package:club_compass/search/clubs.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.club, required this.press})
      : super(key: key);

  final Club club;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: club.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${club.id}",
                child: Image.asset(club.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0 / 4),
            child: Text(
              // clubs is out demo list
              club.title,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
