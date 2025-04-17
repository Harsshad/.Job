import 'package:dot_job/resources/routes/routes.dart';
import 'package:dot_job/screens/home_page.dart';
import 'package:dot_job/screens/job%20seeker/job_seeker_login_screen.dart';
import 'package:dot_job/screens/job%20seeker/job_seeker_register_screen.dart';



import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // runApp(
  //   ChangeNotifierProvider(
  //     create: (context) => ThemeProvider(),
  //     child: const MyApp(),
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '.Job',
      // theme: Provider.of<ThemeProvider>(context).themeData,
      routes: getAppRoutes(),
      // home: HomePage(),
      // home: JobSeekerRegisterScreen(onTap: (){}),
      home: JobSeekerLoginScreen(onTap: (){})
    );
  }
}
