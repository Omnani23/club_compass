import 'package:flutter/material.dart';
import 'package:club_compass/Screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(
          primary: Colors.orange,
          secondary: Colors.black, // Change the primary color for dark mode
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          // Change app bar background color in dark mode
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 48),
            backgroundColor: const Color(0xFFF2994A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide.none,
            ),
            elevation: 0,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: const Color(0xFFFBFBFB),
          filled: true,
          border: OutlineInputBorder(
            borderSide: const BorderSide(),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFF2994A)),
          ),
          prefixStyle: const TextStyle(
            color: Colors.black,
          ),
          labelStyle: const TextStyle(
            color: Colors.black, // Change the label text color to black
          ),
          hintStyle: const TextStyle(
            color: Colors.black, // Change the hint text color to black
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black, // Change the default text color to black
          ),
          bodyLarge: TextStyle(
            color: Colors.black, // Change the default text color to black
          ),
          headlineMedium: TextStyle(
            color: Colors.black, // Change the default text color to black
          ),
          titleSmall: TextStyle(
            color: Colors.black, // Change the default text color to black
          ),
          bodySmall: TextStyle(
            color: Colors.black, // Change the default text color to black
          ),
          titleMedium: TextStyle(
            color: Colors.black, // Change the default text color to black
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor:
              Colors.black, // Change the background color for dark mode
          colorScheme: const ColorScheme.dark(
            secondary: Colors.white,
            primary: Colors.orange, // Change the primary color for dark mode
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 48),
              backgroundColor:
                  Colors.orange, // Change button color in dark mode
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                side: BorderSide.none,
              ),
              elevation: 0,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: const Color(0xFF333333),
            filled: true,
            border: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(14),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Color(0xFFF2994A)),
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor:
                Colors.black, // Change app bar background color in dark mode
            iconTheme: IconThemeData(
              color: Colors.white, // Change the icon color in the app bar
            ),
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              color: Colors.white, // Change the default text color to black
            ),
            bodyLarge: TextStyle(
              color: Colors.white, // Change the default text color to black
            ),
            headlineMedium: TextStyle(
              color: Colors.white, // Change the default text color to black
            ),
            headlineSmall: TextStyle(
              color: Colors.black, // Change the default text color to black
            ),
            titleSmall: TextStyle(
              color: Colors.white, // Change the default text color to black
            ),
            bodySmall: TextStyle(
              color: Colors.white, // Change the default text color to black
            ),
            titleMedium: TextStyle(
              color: Colors.white, // Change the default text color to black
            ),
          )),
      home: SplashScreen(),
    );
  }
}
