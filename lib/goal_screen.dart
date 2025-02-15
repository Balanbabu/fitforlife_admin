import 'package:flutter/material.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({super.key});

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  String goal = 'FAT LOSS';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
          ),
          Text(
            'CHOOSE YOUR GOAL:',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            title: const Text(
              'FAT LOSS',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            leading: Radio(
                activeColor: Colors.lightGreen,
                value: 'FAT LOSS',
                groupValue: goal,
                onChanged: (value) {
                  goal = "FAT LOSS";
                  setState(() {});
                }),
          ),
          ListTile(
            title: const Text(
              'WEIGHT LOSS',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            leading: Radio(
                activeColor: Colors.lightGreen,
                value: 'WEIGHT LOSS',
                groupValue: goal,
                onChanged: (value) {
                  goal = "WEIGHT LOSS";
                  setState(() {});
                }),
          ),
          ListTile(
            title: const Text(
              'MUSCLE GAIN',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            leading: Radio(
                activeColor: Colors.lightGreen,
                value: 'MUSCLE GAIN',
                groupValue: goal,
                onChanged: (value) {
                  goal = "MUSCLE GAIN";
                  setState(() {});
                }),
          ),
          ListTile(
            title: const Text(
              'WEIGHT GAIN',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            leading: Radio(
                activeColor: Colors.lightGreen,
                value: 'WEIGHT GAIN',
                groupValue: goal,
                onChanged: (value) {
                  goal = "WEIGHT GAIN";
                  setState(() {});
                }),
          ),
          SizedBox(
            height: 50,
          ),
          Material(
            elevation: 10,
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(80),
            child: InkWell(
              borderRadius: BorderRadius.circular(80),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      '6 MONTHS TRAINING',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Material(
              elevation: 10,
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(80),
              child: InkWell(
                borderRadius: BorderRadius.circular(80),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '3 MONTHS TRAINING',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 200,
          ),
          Material(
            elevation: 10,
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(80),
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'NEXT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
