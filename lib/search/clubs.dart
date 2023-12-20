import 'package:flutter/material.dart';

class Club {
  final String image, title, description;
  final int id;
  final Color color;

  Club(
      {required this.image,
      required this.title,
      required this.description,
      required this.id,
      required this.color});
}

List<Club> Clubs = [
  Club(
      id: 1,
      title: 'Android Club',
      description: dummyText,
      image: "assets/logo/google.png",
      color: Color(0xFF3D82AE)),
  Club(
      id: 2,
      title: "Malai Club",
      description: dummyText,
      image: "assets/logo/google.png",
      color: Color(0xFFD3A984)),
  Club(
      id: 3,
      title: "IOT club",
      description: dummyText,
      image: "assets/logo/google.png",
      color: Color(0xFF989493)),
  Club(
      id: 4,
      title: "Club a",
      description: dummyText,
      image: "assets/logo/google.png",
      color: Color(0xFFE6B398)),
  Club(
      id: 5,
      title: "Club b",
      description: dummyText,
      image: "assets/logo/google.png",
      color: Color(0xFFFB7883)),
  Club(
    id: 6,
    title: "Club c",
    description: dummyText,
    image: "assets/logo/google.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Here the details of the club will be provided. Below the description the upcoming events of the respective club will be shown through which the students can register to the event.";
