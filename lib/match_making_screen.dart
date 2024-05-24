import 'package:flutter/material.dart';

class MatchMakingScreen extends StatefulWidget {
  static const String routeName = "Match";

   const MatchMakingScreen({super.key});

  @override
  State<MatchMakingScreen> createState() => _MatchMakingScreenState();
}

class _MatchMakingScreenState extends State<MatchMakingScreen> {
 TextEditingController nameController = TextEditingController();

 TextEditingController birthDateController = TextEditingController();

 TextEditingController birthTimeController = TextEditingController();

 TextEditingController birthPlaceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFEDCFF6),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Match Making",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF672F98),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Divider(
              color: Colors.black,
              endIndent: 40,
              indent: 40,
              thickness: 2,
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "Boy's Details",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF672F98),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                            label: Text("Name"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            hintText: "Enter Your Name"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        controller: birthDateController,
                        decoration: const InputDecoration(
                            label: Text("Birth Date"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            suffixIcon: Icon(Icons.date_range),
                            hintText: "yyyy/mm/dd"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        controller: birthTimeController,
                        decoration: const InputDecoration(
                            label: Text("Birth Time"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            suffixIcon: Icon(Icons.access_time),
                            hintText: "--:--"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        controller: birthPlaceController,
                        decoration: const InputDecoration(
                            label: Text("Birth Place"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            hintText: "Enter birth city name"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "Girl's Details",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF672F98),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                            label: Text("Name"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            hintText: "Enter Your Name"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        controller: birthDateController,
                        decoration: const InputDecoration(
                            label: Text("Birth Date"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            suffixIcon: Icon(Icons.date_range),
                            hintText: "yyyy/mm/dd"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        controller: birthTimeController,
                        decoration: const InputDecoration(
                            label: Text("Birth Time"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            suffixIcon: Icon(Icons.access_time),
                            hintText: "--:--"),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        controller: birthPlaceController,
                        decoration: const InputDecoration(
                            label: Text("Birth Place"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            hintText: "Enter birth city name"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
