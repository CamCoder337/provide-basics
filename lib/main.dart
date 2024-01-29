import 'package:flutter/material.dart';
import 'package:provider_basics/providers/user_provider.dart';
import 'package:provider_basics/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:provider_basics/skeleton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Basics',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,

        ),
        home: Skeleton(),
      ),
    );
  }
}
