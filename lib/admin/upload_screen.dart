import 'dart:io';

import 'package:club_compass/admin/admin_interface.dart';
import 'package:club_compass/aspects/function.dart';
import 'package:club_compass/aspects/images.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  final _formKey = GlobalKey<FormState>();
  late bool dark;
  File? _pickedImage;

  Future<void> _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _pickedImage = File(pickedFile.path);
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    dark = AppFunctions.isDarkMode(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                            dark
                                ? AppImages.darkAppLogo
                                : AppImages.whiteAppLogo,
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
                  const SizedBox(height: 26),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _pickedImage != null
                        ? Image.file(_pickedImage!)
                        : ElevatedButton(
                            onPressed: _pickImage,
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey),
                              minimumSize: MaterialStateProperty.all(
                                  const Size(double.infinity, 48)),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Upload",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// ... (Your previous code)

  Widget _buildForm() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Text(
                'Fill the form',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const SizedBox(height: 16),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: 'Enter your Event title',
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Department',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: const InputDecoration(
                        hintText: 'Enter your Address',
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Venue',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: const InputDecoration(
                        hintText: 'Enter Event venue along with time',
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Date',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                        hintText: 'Enter Event date (YYYY-MM-DD)',
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Time',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                        hintText: 'Enter Event time (HH:mm)',
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Event Description',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        hintText: 'Upto 1000 words',
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdminInterface(),
                      ),
                    );
                  }
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 48)),
                ),
                child: const Text('Submit'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
