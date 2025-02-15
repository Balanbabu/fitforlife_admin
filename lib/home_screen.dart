import 'dart:ui';

import 'package:fitforlife_admin/mealplan_screen.dart';
import 'package:fitforlife_admin/profile.dart';
import 'package:fitforlife_admin/recipe_screen.dart';
import 'package:fitforlife_admin/workout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            TabBarView(
              controller: _tabController,
              children: [
                ExploreScreen(),
                ExplorerSection(),
                AnalyticsSection(),
                ProfileScreen(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(50),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomNavBarITem(
                        isActive: _tabController.index == 0,
                        iconData: Icons.home,
                        label: "Home",
                        onTap: () {
                          _tabController.animateTo(0);
                        },
                      ),
                      CustomNavBarITem(
                        isActive: _tabController.index == 1,
                        iconData: Icons.explore,
                        label: "explore",
                        onTap: () {
                          _tabController.animateTo(1);
                        },
                      ),
                      CustomNavBarITem(
                        isActive: _tabController.index == 2,
                        iconData: Icons.analytics,
                        label: "analytics",
                        onTap: () {
                          _tabController.animateTo(2);
                        },
                      ),
                      CustomNavBarITem(
                        isActive: _tabController.index == 3,
                        iconData: Icons.person,
                        label: "person",
                        onTap: () {
                          _tabController.animateTo(3);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnalyticsSection extends StatelessWidget {
  const AnalyticsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'search',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.search_off_outlined),
              ),
            ),
          ),
          Text(
            'POPULAR WORKOUT',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://plus.unsplash.com/premium_photo-1664109999537-088e7d964da2?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        height: 250,
                        width: 390,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        fit: BoxFit.fill,
                        'https://plus.unsplash.com/premium_photo-1664109999537-088e7d964da2?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        height: 250,
                        width: 390,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                // Material(
                //   elevation: 10,
                //   color: Colors.white,
                //   borderRadius: BorderRadius.circular(40),
                //   child: InkWell(
                //     borderRadius: BorderRadius.circular(40),
                //     onTap: () {},
                //   ),
                // ),
              ],
            ),
          ),
          Text(
            'TODAYS PLAN',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                Material(
                  elevation: 15,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkoutScreen()));
                    },
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Material(
                          color: Colors.grey[200],
                          child: Text(
                            'for beginers',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1518459031867-a89b944bffe4?q=80&w=2882&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                  width: 120,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PUSH UPS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Material(
                                    color: Colors.grey[200],
                                    child: Text(
                                      '10 min',
                                    ),
                                  ),
                                  Material(
                                    color: Colors.green,
                                    child: SizedBox(
                                      width: 200,
                                      height: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Material(
                elevation: 15,
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WorkoutScreen()));
                  },
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Material(
                        color: Colors.grey[200],
                        child: Text('intermediate'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1518459031867-a89b944bffe4?q=80&w=2882&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                width: 120,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SIT UPS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Material(
                                  color: Colors.grey[200],
                                  child: Text(
                                    '15 min',
                                  ),
                                ),
                                Material(
                                  color: Colors.green,
                                  child: SizedBox(
                                    width: 200,
                                    height: 10,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Material(
                elevation: 15,
                borderRadius: BorderRadiusDirectional.circular(10),
                color: Colors.white,
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WorkoutScreen()));
                  },
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Material(
                        color: Colors.grey[200],
                        child: Text('intermediate'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1518459031867-a89b944bffe4?q=80&w=2882&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                width: 120,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SIT UPS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Material(
                                  color: Colors.grey[200],
                                  child: Text(
                                    '15 min',
                                  ),
                                ),
                                Material(
                                  color: Colors.green,
                                  child: SizedBox(
                                    width: 200,
                                    height: 10,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}

class ExplorerSection extends StatelessWidget {
  const ExplorerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                    'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              'Best for you',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            Material(
              elevation: 15,
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkoutScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1518459031867-a89b944bffe4?q=80&w=2882&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        width: 90,
                      ),
                    ),
                    Text(
                      'BELLY FAT BURNER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        '10 min',
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        'for beginers',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Material(
              elevation: 15,
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkoutScreen()));
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        'http://images.unsplash.com/photo-1550259979-ed79b48d2a30?q=80&w=2868&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        height: 70,
                        width: 90,
                      ),
                    ),
                    Text(
                      'FAT LOSS ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        '10 min',
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        'for beginers',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Material(
              elevation: 15,
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkoutScreen()));
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        'https://plus.unsplash.com/premium_photo-1675691395861-0f92bfc48c14?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        width: 90,
                      ),
                    ),
                    Text(
                      'PLANK',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        '5 min',
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        'expert',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Material(
              elevation: 15,
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkoutScreen()));
                },
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1601422407692-ec4eeec1d9b3?q=80&w=2825&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        width: 90,
                      ),
                    ),
                    Text(
                      'MUSCLE BUILD',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        '30 min',
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        'intermediate',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Material(
              elevation: 15,
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkoutScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1534367990512-edbdca781b00?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fExFRyUyMFdPUktPVVR8ZW58MHx8MHx8fDA%3D',
                          width: 90,
                        ),
                      ),
                      Text(
                        'LEG EXCERCISE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Material(
                        color: Colors.grey[200],
                        child: Text(
                          '10 min',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Material(
              elevation: 15,
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkoutScreen()));
                },
                child: Column(
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1601422407692-ec4eeec1d9b3?q=80&w=2825&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      height: 90,
                      width: 90,
                    ),
                    Text(
                      'MUSCLE BUILD',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        '30 min',
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        'intermediate',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Material(
              elevation: 15,
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkoutScreen()));
                },
                child: Column(
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1601422407692-ec4eeec1d9b3?q=80&w=2825&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      height: 90,
                      width: 90,
                    ),
                    Text(
                      'MUSCLE BUILD',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        '30 min',
                      ),
                    ),
                    Material(
                      color: Colors.grey[200],
                      child: Text(
                        '',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List days = [
    {'ontap': true, 'label': 'S', 'label1': '10'},
    {'ontap': false, 'label': 'M', 'label1': '11'},
    {'ontap': false, 'label': 'T', 'label1': '12'},
    {'ontap': false, 'label': 'W', 'label1': '13'},
    {'ontap': false, 'label': 'T', 'label1': '14'},
    {'ontap': false, 'label': 'F', 'label1': '15'},
    {'ontap': false, 'label': 'S', 'label1': '16'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      children: [
        Text(
          DateFormat('dd-MM-yyyy').format(DateTime.now()),
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: (20), color: Colors.black),
        ),
        SizedBox(
          height: (10),
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              itemBuilder: (context, index) => DateButton(
                    label: days[index]['label'],
                    label1: days[index]['label1'],
                    onTap: () {
                      setState(() {});
                      for (Map a in days) {
                        a['ontap'] = false;
                      }
                      days[index]['ontap'] = true;
                    },
                    isActive: days[index]['ontap'],
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
              itemCount: days.length),
        ),
        Row(
          children: [
            Text(
              'Good Morning',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Todays Report',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: (20),
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              Material(
                elevation: 15,
                borderRadius: BorderRadius.circular(40),
                color: Colors.lightGreen,
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'calories remaining',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: CircularProgressIndicator(
                              color: Colors.black,
                              strokeWidth: 10,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              strokeCap: StrokeCap.round,
                              value: 0.8,
                            ),
                          ),
                          Text("80%")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Material(
                elevation: 15,
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(40),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {},
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'BASE GOAL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        '3000 calories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Material(
                elevation: 15,
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(40),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WorkoutScreen()));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'WORKOUT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.fitness_center,
                        size: 80,
                      )
                    ],
                  ),
                ),
              ),
              Material(
                elevation: 15,
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(40),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MealplanScreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'DIET PLAN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.restaurant,
                        size: 80,
                      ),
                    ],
                  ),
                ),
              ),
              Material(
                elevation: 15,
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(40),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'DIARY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.menu_book,
                          size: 80,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                elevation: 10,
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(40),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecipeScreen()));
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'RECIPE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.fastfood,
                        size: 60,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomNavBarITem extends StatelessWidget {
  final String label;
  final IconData iconData;
  final bool isActive;
  final Function() onTap;
  const CustomNavBarITem({
    super.key,
    required this.label,
    required this.iconData,
    this.isActive = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(50),
      color: isActive ? Colors.lightGreen : Colors.white,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            children: [
              Icon(iconData),
              if (isActive)
                SizedBox(
                  width: 10,
                ),
              if (isActive)
                Text(
                  label,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class DateButton extends StatelessWidget {
  final String label, label1;
  final bool isActive;
  final Function() onTap;
  const DateButton({
    super.key,
    required this.label,
    this.isActive = false,
    required this.onTap,
    required this.label1,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        backgroundColor: isActive ? Colors.grey : Colors.lightGreen,
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              label1,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
