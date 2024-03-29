import 'package:fivenance/pages/begin.dart';
import 'package:fivenance/pages/editprofile.dart';
import 'package:fivenance/pages/forgotpw.dart';
import 'package:fivenance/pages/forumpage.dart';
import 'package:fivenance/pages/get_started.dart';
import 'package:fivenance/pages/home.dart';
import 'package:fivenance/pages/login.dart';
import 'package:fivenance/pages/mentor1.dart';
import 'package:fivenance/pages/mentor2.dart';
import 'package:fivenance/pages/myaccount.dart';
import 'package:fivenance/pages/news.dart';
import 'package:fivenance/pages/newspage.dart';
import 'package:fivenance/pages/profile.dart';
import 'package:fivenance/pages/signup.dart';
import 'package:fivenance/pages/training.dart';
import 'package:fivenance/pages/activitylog.dart';
import 'package:fivenance/pages/triviareport.dart';
import 'package:fivenance/pages/rewards.dart';
import 'package:fivenance/pages/goals.dart';
import 'package:fivenance/pages/helpnsupport.dart';
import 'package:fivenance/pages/aboutapp.dart';
import 'package:fivenance/pages/dailytrivia.dart';
import 'package:fivenance/pages/forumlikesrecord.dart';
import 'package:fivenance/pages/repliesrecord.dart';
import 'package:fivenance/pages/searchhistoryrecord.dart';
import 'package:fivenance/pages/newsrecord.dart';
import 'package:fivenance/pages/visitedtraining.dart';
import 'package:fivenance/pages/triviarecord.dart';
import 'package:fivenance/pages/trivia.dart';
import 'package:fivenance/pages/trivia_answer.dart';
import 'package:fivenance/pages/CreatePostPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/get_started',
      routes: {
        '/home': (context) => Home(),
        '/get_started': (context) => GetStarted(),
        '/begin': (context) => Begin(),
        '/editprofile': (context) => EditProfile(),
        '/forgotpw': (context) => ForgotPW(),
        '/CreatePostPage': (context) => CreatePostPages(),
        '/forum': (context) => Forum(),
        '/login': (context) => Login(),
        '/mentor1': (context) => Mentor1(),
        '/mentor2': (context) => Mentor2(),
        '/myaccount': (context) => MyAccount(),
        '/news': (context) => News(),
        '/newspage': (context) => NewsPage(),
        '/profile': (context) => Profile(),
        '/signup': (context) => SignUp(),
        '/training': (context) => Training(),
        '/activitylog': (context) => ActivityLog(),
        '/triviareport': (context) => TriviaReport(),
        '/rewards': (context) => Rewards(),
        '/goals': (context) => Goals(),
        '/helpnsupport': (context) => HelpnSupport(),
        '/aboutapp': (context) => AboutApp(),
        '/dailytrivia': (context) => DailyTrivia(),
        '/forumlikesrecord': (context) => ForumLikesRecord(),
        '/repliesrecord': (context) => RepliesnComments(),
        '/searchhistoryrecord': (context) => SearchHistory(),
        '/newsrecord': (context) => NewsRecord(),
        '/visitedtraining': (context) => VisitedTraining(),
        '/triviarecord': (context) => TriviaRecord(),
        '/trivia': (context) => Trivia(),
        '/triviaanswer': (context) => TriviaAnswer(),
      },
    ));
