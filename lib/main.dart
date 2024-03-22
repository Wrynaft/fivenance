import 'package:fivenance/pages/begin.dart';
import 'package:fivenance/pages/editprofile.dart';
import 'package:fivenance/pages/forgotpw.dart';
import 'package:fivenance/pages/forum.dart';
import 'package:fivenance/pages/forumpage.dart';
import 'package:fivenance/pages/get_started.dart';
import 'package:fivenance/pages/loading.dart';
import 'package:fivenance/pages/login.dart';
import 'package:fivenance/pages/mentor1.dart';
import 'package:fivenance/pages/mentor2.dart';
import 'package:fivenance/pages/myaccount.dart';
import 'package:fivenance/pages/news.dart';
import 'package:fivenance/pages/newspage.dart';
import 'package:fivenance/pages/profile.dart';
import 'package:fivenance/pages/signup.dart';
import 'package:fivenance/pages/training.dart';
import 'package:fivenance/pages/trivia.dart';
import 'package:fivenance/pages/trivia_answer.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/triviaanswer',
  routes: {
    '/': (context) => GetStarted(),
    '/get_started': (context) => GetStarted(),
    '/begin': (context) => Begin(),
    '/editprofile': (context) => EditProfile(),
    '/forgotpw': (context) => ForgotPW(),
    '/forum': (context) => Forum(),
    '/forumpage': (context) => ForumPage(),
    '/login': (context) => Login(),
    '/mentor1': (context) => Mentor1(),
    '/mentor2': (context) => Mentor2(),
    '/myaccount': (context) => MyAccount(),
    '/news': (context) => News(),
    '/newspage': (context) => NewsPage(),
    '/profile': (context) => Profile(),
    '/signup': (context) => SignUp(),
    '/training': (context) => Training(),
    '/trivia': (context) => Trivia(),
    '/triviaanswer': (context) => TriviaAnswer(),
  },
));

