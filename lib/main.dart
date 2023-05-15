//packages
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import './firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
//screens
import './screens/bottom_navigation_bar.dart';
import './screens/verify_otp.dart';
import './screens/phone_number.dart';
import './screens/message_screen.dart';
import './screens/profile_page.dart';
//widgets
//providers
import './providers/person_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Person>.value(
          value: Person(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        routes: {
          'verify': (context) => MyVerify(),
          BotomNavBar.route: (context) => BotomNavBar(),
          'phone': (context) => MyPhone(),
          MessageScreen.route: (context) => MessageScreen(),
        },
        home: ProfilePage(),
        // home: AnimatedSplashScreen(
        //     splash: Container(
        //       child: Image.asset(
        //         'assets/download.png',
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     duration: 1500,
        //     splashTransition: SplashTransition.fadeTransition,
        //     nextScreen: FirebaseAuth.instance.currentUser != Null
        //         ? BotomNavBar()
        //         : MyPhone()),
      ),
    );
  }
}
