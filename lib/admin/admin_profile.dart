import 'package:flutter/material.dart';
import 'package:club_compass/admin/body.dart';

class AdminProfile extends StatefulWidget {
  const AdminProfile({Key? key}) : super(key: key);

  @override
  State<AdminProfile> createState() => _AdminProfileState();
}

class _AdminProfileState extends State<AdminProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
      ),
      body: Body(),
    );
  }
}
