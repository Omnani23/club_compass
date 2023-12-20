import 'package:club_compass/search/clubs.dart';
import 'package:flutter/material.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({Key? key, required this.clubs}) : super(key: key);

  final Club clubs;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Description",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Set text color to black
                    ),
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Color(0xFF535353)),
              children: [
                TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
