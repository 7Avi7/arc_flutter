import 'package:flutter/material.dart';
import 'package:test_arc/ui/views/bahonPage1_views.dart';
import 'package:test_arc/ui/views/bahonPage2_views.dart';
import 'package:test_arc/ui/views/profile_details_view.dart';
import 'package:test_arc/ui/views/profiles_view.dart';
import 'package:test_arc/ui/views/searched_pet_views.dart';
import 'package:test_arc/ui/views/sign_in_view.dart';

class RouteNavigation {
  static const String signIn = 'signIn';
  static const String profiles = 'profiles';
  static const String profileDetails = 'profileDetails';
  static const String bahonPage1 = 'bahonPage1';
  static const String bahonPage2 = 'bahonPage2';
  static const String petMainPage = 'petMainPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signIn:
        return MaterialPageRoute(builder: (context) => const SignInView());
      case profiles:
        return MaterialPageRoute(builder: (context) => const ProfileView());
      case profileDetails:
        return MaterialPageRoute(
            builder: (context) => const ProfileDetailsView());
      case bahonPage1:
        return MaterialPageRoute(builder: (context) => const BahonPage1());
      case bahonPage2:
        return MaterialPageRoute(builder: (context) => const Page2());
      case petMainPage:
        return MaterialPageRoute(builder: (context) => const PetMainPage());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
