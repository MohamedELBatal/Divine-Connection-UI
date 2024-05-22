import 'package:flutter/material.dart';

class KundliScreen extends StatelessWidget {
  static const String routeName = "Kundli";

  KundliScreen({super.key});

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
          Expanded(
            child: GridView.builder(
              itemCount: icons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  mainAxisSpacing: 35,
                  crossAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFBAFD),
                    image: DecorationImage(
                      image: AssetImage(
                        icons[index],
                      ),
                    ),
                  ),
                  child: Text(
                    names[index],
                    style: const TextStyle(
                      fontSize: 17,
                      color: Color(0xFF672F98),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
