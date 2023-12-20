import 'package:club_compass/aspects/function.dart';
import 'package:club_compass/aspects/images.dart';
import 'package:club_compass/aspects/sizes.dart';
import 'package:club_compass/login/forgot_password.dart';
import 'package:club_compass/user/user_interface.dart';
import 'package:flutter/material.dart';

import '../admin/admin_interface.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool obscureText = true;
  TextEditingController emailController = TextEditingController();

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    return null;
  }

  void _login() {
    if (formKey.currentState?.validate() ?? false) {
      String email = emailController.text.trim();

      if (email.contains('@club')) {
        // Navigate to AdminHomeScreen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const AdminInterface(),
          ),
        );
      } else if (email.contains('@anurag')) {
        // Navigate to UserHomeScreen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const UserInterface(),
          ),
        );
      } else {
        // Handle other cases or show an error message
        // For now, print a message to the console
        print('Invalid email domain');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = AppFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      dark ? AppImages.darkAppLogo : AppImages.whiteAppLogo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                'Welcome to Club Compass',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Text(
                'Login',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 24),
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    style: Theme.of(context).textTheme.bodyLarge,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                    ),
                    validator: _emailValidator,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    obscureText: obscureText,
                    style: Theme.of(context).textTheme.bodyLarge,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      suffixIcon: IconButton(
                        icon: Icon(obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
                    ),
                    validator: _passwordValidator,
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPassword(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Color(0xFF3D80DE)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: _login, // Use the _login function
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: const Size(double.infinity, 50),
                      padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text("Login"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
