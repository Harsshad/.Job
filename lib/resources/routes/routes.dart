import 'package:dot_job/screens/home_page.dart';
import 'package:dot_job/screens/job%20poster/job_poster_login_screen.dart';
import 'package:dot_job/screens/job%20poster/job_poster_register_screen.dart';
import 'package:dot_job/screens/job%20seeker/job_seeker_login_screen.dart';
import 'package:dot_job/screens/job%20seeker/job_seeker_register_screen.dart';



import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return {
    '/job-seeker-login': (context) => JobSeekerLoginScreen(onTap: () {}),
    '/job-seeker-register': (context) => JobSeekerRegisterScreen(onTap: () {}),
    '/job-poster-login': (context) => JobPosterLoginScreen(onTap: () {}),
    '/job-poster-register': (context) => JobPosterRegisterScreen(onTap: () {}),
    '/home-page': (context) => HomePage(),
  };
}
