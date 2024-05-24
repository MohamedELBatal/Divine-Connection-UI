import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test1/home/home.dart';
import 'package:test1/kundli_details.dart';
import 'package:test1/pages/life_report_screen.dart';
import 'package:test1/pages/match_making_screen.dart';
import 'package:test1/pages/horoscope_screen.dart';
import 'package:test1/pages/icon_details.dart';
import 'package:test1/pages/kundli_screen.dart';
import 'package:test1/pages/remedies_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        HoroScopeScreen.routeName: (context) =>  const HoroScopeScreen(),
        IconDetailScreen.routeName: (context) => IconDetailScreen(
              iconPath: (ModalRoute.of(context)?.settings.arguments
                  as Map<String, String>)['iconPath']!,
              iconTitle: (ModalRoute.of(context)?.settings.arguments
                  as Map<String, String>)['iconText']!,
            ),
        KundliScreen.routeName: (context) => KundliScreen(),
        KundliDetails.routeName: (context) => const KundliDetails(),
        MatchMakingScreen.routeName: (context) => const MatchMakingScreen(),
        LifeReportScreen.routeName: (context) => const LifeReportScreen(),
        RemediesScreen.routeName: (context) => const RemediesScreen(),

      },
    ));
  }
}
