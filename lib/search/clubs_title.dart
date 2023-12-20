import 'package:club_compass/search/clubs.dart';
import 'package:flutter/material.dart';

class ClubTitleWithImage extends StatelessWidget {
  const ClubTitleWithImage({super.key, required this.club});

  final Club club;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Anurag University",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            club.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Hero(
                  tag: "${club.id}",
                  child: Image.asset(
                    club.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
