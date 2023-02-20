import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:mentalhealth/src/features/authentication/dashboard/grid/grid3_chats.dart';
import 'package:mentalhealth/src/features/authentication/dashboard/grid/grid4_general_mental_health.dart';
import 'package:mentalhealth/src/features/authentication/dashboard/grid/grid5_suicide_prevention.dart';
import 'package:mentalhealth/src/features/authentication/dashboard/grid/grid6_teletherapy.dart';
import 'package:mentalhealth/src/features/authentication/dashboard/grid/grid8_stress_anxiety_management.dart';
import '../../../constants/image_strings.dart';
import '../profile/profile_screen.dart';
import 'grid/grid1_dashboard.dart';
import 'grid2/grid2_e_resources.dart';
import 'grid/grid7_addiction_removing.dart';

class Dashhboard extends StatefulWidget {
  const Dashhboard({Key? key}) : super(key: key);

  @override
  State<Dashhboard> createState() => _DashhboardState();
}

class _DashhboardState extends State<Dashhboard> {
  Icon get cusIcon => const Icon(
        Icons.search,
        size: 25,
        color: Colors.pink,
      );

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context);
    // var height = mediaQuery.size.height;
    // var brightness = mediaQuery.platformBrightness;
    // final isDarkMode = brightness == Brightness.dark;
    //variable
    //final txtTheme = Theme.of(context).textTheme;
    // var cusIcon = Icon(Icons.search);
    Widget cusSearchBar = const Text("Home");

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        //leading:  IconButton(icon: Icon(Icons.menu), color: Colors.black, onPressed: (){},),
        title: cusSearchBar, //Text("Home", style: txtTheme.headline6),
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: const Image(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
        actions: [
          InkWell(
            child: cusIcon,
            onTap: () {},
          ),
          Container(
            //margin: const EdgeInsets.only(right: 10.0, top: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.transparent),
            child: IconButton(
                onPressed: () {
                  Get.to(() => const ProfileScreen());
                },
                // onPressed: () {AuthenticationRepository.instance.logout();},
                icon: const Image(image: AssetImage(juserlogo))),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Hello\nMr Biologist!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Get.to(() => const Dashhboard());
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                Get.to(() => const ProfileScreen());
              },
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Categories"),
            ),
            ListTile(
              leading: const Icon(Icons.menu_book_sharp),
              title: const Text("E-Resources"),
              onTap: () {
                Get.to(() => const Grid2());
              },
            ),
            ListTile(
              leading: const Icon(Icons.people_sharp),
              title: const Text("Chat for help"),
              onTap: () {
                Get.to(() => const Grid3());
              },
            ),
            ListTile(
              leading: const Icon(Icons.check_box),
              title: const Text("General Mental Health"),
              onTap: () {
                Get.to(() => const Grid4());
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_alert),
              title: const Text("Suicide Prevention"),
              onTap: () {
                Get.to(() => const Grid5());
              },
            ),
            ListTile(
              leading: const Icon(Icons.call),
              title: const Text("Teletherapy"),
              onTap: () {
                Get.to(() => Grid6());
              },
            ),
            ListTile(
              leading: const Icon(Icons.remove_circle_outlined),
              title: const Text("Addiction Removing"),
              onTap: () {
                Get.to(() => const Grid7());
              },
            ),
            ListTile(
              leading: const Icon(Icons.timelapse_outlined),
              title: const Text("Stress & Anxiety Management"),
              onTap: () {
                Get.to(() => const Grid8());
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info_outlined),
              title: const Text("About Us"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(18.0),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello\nMr Biologist.",
                  style: Theme.of(context).textTheme.headline4),
              const SizedBox(height: 5),
              StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 12,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 4,
                    mainAxisCellCount: 1.8,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const Grid1());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: // const Color(0xFFe8dff5),
                              Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.dashboard,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text("Dashboard",
                                style: Theme.of(context).textTheme.headline6),
                            const SizedBox(height: 10),
                            Text("Your all in one Dashboard",
                                style: Theme.of(context).textTheme.bodyText2)
                          ],
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.6,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const Grid2());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: //const Color(0xFFE8B7D4),
                              Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.menu_book_sharp,
                              size: 20,
                              color: Colors.indigo,
                            ),
                            Text("E-Resources",
                                style: Theme.of(context).textTheme.bodyLarge),
                          ],
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.6,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const Grid3());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: //const Color(0xFFb0c9e5),
                              Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.people_sharp,
                              size: 20,
                              color: Colors.pink,
                            ),
                            Text("Chats",
                                style: Theme.of(context).textTheme.bodyLarge),
                          ],
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.5,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const Grid4());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: //const Color(0xFFF5D488),
                              Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.check_box,
                              size: 20,
                              color: Colors.purple,
                            ),
                            Text("General Mental\nHealth",
                                style: Theme.of(context).textTheme.bodyLarge),
                          ],
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.5,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const Grid5());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: //const Color(0xFFDC8BA3),
                              Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.call,
                              size: 20,
                              color: Colors.green,
                            ),
                            Text("TeleTherapy",
                                style: Theme.of(context).textTheme.bodyLarge),
                          ],
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => Grid6());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: //const Color(0xFFEBC1EE),
                              Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.add_alert,
                              size: 20,
                              color: Colors.blue,
                            ),
                            Text("Suicide Prevention",
                                style: Theme.of(context).textTheme.bodyText1),
                          ],
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const Grid7());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: // const Color(0xFFD0B0B1),
                              Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.remove_circle_outlined,
                              size: 20,
                              color: Colors.red,
                            ),
                            Text("Addiction Removing",
                                style: Theme.of(context).textTheme.bodyText1),
                          ],
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 4,
                    mainAxisCellCount: 1,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => const Grid8());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: //const Color(0xFFe15c7c),
                              Colors.black,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.timelapse_outlined,
                              size: 20,
                              color: Colors.orange,
                            ),
                            Text("Stress & Anxiety Management",
                                style: Theme.of(context).textTheme.bodyText1),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
