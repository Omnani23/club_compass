import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String image; // Change this line
  final String title;
  final String organized;
  final String location;
  final String time;

  const Post({
    required this.image,
    required this.title,
    required this.organized,
    required this.location,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      organized,
                      softWrap: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.location_on),
              const SizedBox(width: 5),
              Text(location),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.calendar_today),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(time),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
