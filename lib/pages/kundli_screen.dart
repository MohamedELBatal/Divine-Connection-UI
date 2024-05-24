import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/kundli_details.dart';
import 'package:test1/life_report_screen.dart';
import 'package:test1/match_making_screen.dart';
import 'package:test1/remedies_screen.dart';

class KundliScreen extends StatefulWidget {
  static const String routeName = "Kundli";

  KundliScreen({super.key});

  @override
  State<KundliScreen> createState() => _KundliScreenState();
}

class _KundliScreenState extends State<KundliScreen> {
  List<String> icons = [
    "assets/images/BIrth Chart.png",
    "assets/images/Match Making.png",
    "assets/images/Life Report.png",
    "assets/images/Remedies.png",
  ];

  List<String> names = [
    "Birth Chart",
    "Match Making",
    "Life Report",
    "Remedies",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFF672F98),
          title: const Text(
            "Divine Connection",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: ElevatedButton(
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(0),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: MediaQuery.of(context).size.height * .8,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "English",
                                  style: TextStyle(fontSize: 30),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Arabic",
                                  style: TextStyle(fontSize: 30),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Urdu",
                                  style: TextStyle(fontSize: 30),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: const Text(
                  "Language",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.notifications_active_outlined,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ]),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Kundli",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF672F98)),
              ),
            ),
          ),
          const Divider(
            thickness: 3,
            indent: 2,
            endIndent: 2,
            color: Colors.black,
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, KundliDetails.routeName);
                },
                child: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFBAFD),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Image.asset("assets/images/BIrth Chart.png"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Birth Chart",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w600),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MatchMakingScreen.routeName);
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFBAFD),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Image.asset("assets/images/Match Making.png"),
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      const Text(
                        "Match Making",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, LifeReportScreen.routeName);
                },
                child: Container(
                    height: 200,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Color(0xFFEFBAFD),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Image.asset("assets/images/Life Report.png"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Life Report",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w600),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RemediesScreen.routeName);
                },
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFBAFD),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Image.asset("assets/images/Remedies.png"),
                      ),
                      const SizedBox(
                        height: 33,
                      ),
                      const Text(
                        "Remedies",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
