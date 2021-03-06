import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:generalshop/screens/home_page.dart';
import 'package:generalshop/screens/onboarding/onboarding.dart';
import 'package:generalshop/screens/utilities/screen_utilities.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  var pref = await SharedPreferences.getInstance();
  bool isSeen = pref.getBool('is_seen');
  Widget homePage = HomePage();

  if (isSeen == null || !isSeen) {
    homePage = OnBoarding();
  }

  runApp(GeneralShop(homePage));
}

class GeneralShop extends StatelessWidget {
  final Widget homePage;
  GeneralShop(this.homePage);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'General Shop',
      home: homePage,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            headline5: TextStyle(
              fontSize: 18,
              color: ScreenUtilties.textColor,
              fontFamily: "QuickSand",
              fontWeight: FontWeight.w700,
            ),
            subtitle1: TextStyle(
              fontSize: 16,
              color: ScreenUtilties.textColor,
              fontFamily: "QuickSand",
              fontWeight: FontWeight.w700,
            ),
            headline4: TextStyle(
              fontSize: 16,
              color: ScreenUtilties.darkerGreyText,
              fontFamily: "QuickSand",
              fontWeight: FontWeight.w700,
            ),
            headline3: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
              height: 1.5,
              color: ScreenUtilties.darkerGreyText,
              fontFamily: "QuickSand",
              fontWeight: FontWeight.w700,
            ),
            headline2: TextStyle(
              fontSize: 18.0,
              letterSpacing: 1.5,
              height: 1.5,
              color: ScreenUtilties.textColor,
              fontFamily: "Nunito",
              fontWeight: FontWeight.w700,
            ),
          ),
          appBarTheme: AppBarTheme(
            actionsIconTheme: IconThemeData(
              color: ScreenUtilties.textColor,
            ),
            elevation: 0.0,
            textTheme: TextTheme(
              headline6: TextStyle(
                fontSize: 22,
                color: ScreenUtilties.textColor,
                fontFamily: "QuickSand",
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          tabBarTheme: TabBarTheme(
            labelColor: ScreenUtilties.textColor,
            labelStyle: TextStyle(
              fontSize: 22,
              color: ScreenUtilties.textColor,
              fontFamily: "QuickSand",
              fontWeight: FontWeight.w700,
            ),
            labelPadding: EdgeInsets.only(right: 16, left: 16, bottom: 12),
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: ScreenUtilties.unSelected,
            unselectedLabelStyle: TextStyle(
              fontSize: 22,
              color: ScreenUtilties.textColor,
              fontFamily: "QuickSand",
              fontWeight: FontWeight.w700,
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: ScreenUtilties.mainBlue)),
    );
  }
}
