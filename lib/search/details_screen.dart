import 'package:club_compass/search/clubs.dart';
import 'package:club_compass/search/clubs_title.dart';
import 'package:club_compass/search/colors_sizes.dart';
import 'package:club_compass/search/description.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.clubs});

  final Club clubs;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each clubs have a color
      backgroundColor: clubs.color,
      appBar: AppBar(
        backgroundColor: clubs.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/logo/back.svg',
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/logo/search.svg"),
            onPressed: () {},
          ),
          SizedBox(width: 20.0 / 2)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: 20.0,
                      right: 20.0,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorAndSize(clubs: clubs),
                        SizedBox(height: 20.0 / 2),
                        Description(club: clubs),
                        SizedBox(height: 20.0 / 2),
                      ],
                    ),
                  ),
                  ClubTitleWithImage(club: clubs)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
