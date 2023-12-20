import 'package:club_compass/admin/upload_screen.dart';
import 'package:club_compass/aspects/function.dart';
import 'package:club_compass/aspects/images.dart';
import 'package:club_compass/content_screen.dart';
import 'package:club_compass/post_screen.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  late bool dark; // Declare dark as a late variable

  final List<Post> posts = [
    const Post(
        image: AppImages.whiteAppLogo,
        title: 'A two day workshop on cyber security',
        organized: 'organized by cse department',
        location: 'A-229',
        time: 'Nov 21,2023 9:00AM'),
    const Post(
        image: AppImages.whiteAppLogo,
        title: 'A two day workshop on cyber security',
        organized: 'organized by cse department',
        location: 'A-229',
        time: 'Nov 21,2023 9:00AM'),
    const Post(
        image: AppImages.whiteAppLogo,
        title: 'A two day workshop on cyber security',
        organized: 'organized by cse department',
        location: 'A-229',
        time: 'Nov 21,2023 9:00AM'),
    const Post(
        image: AppImages.whiteAppLogo,
        title: 'A two day workshop on cyber security',
        organized: 'organized by cse department',
        location: 'A-229',
        time: 'Nov 21,2023 9:00AM'),
    const Post(
        image: AppImages.whiteAppLogo,
        title: 'A two day workshop on cyber security',
        organized: 'organized by cse department',
        location: 'A-229',
        time: 'Nov 21,2023 9:00AM'),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    dark = AppFunctions.isDarkMode(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25.0),
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Image.asset(
                      dark ? AppImages.darkAppLogo : AppImages.whiteAppLogo,
                      width: 100.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, right: 5.0),
                    child: IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {
                        // Handle notification icon tap
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onChanged: (value) {
                  // Handle search functionality here
                },
              ),
            ),
            const SizedBox(height: 16), // Add spacing
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FeedScreen(post: posts[index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Post(
                          title: posts[index].title,
                          image: posts[index].image,
                          time: posts[index].time,
                          location: posts[index].location,
                          organized: posts[index].organized,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UploadScreen(),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
