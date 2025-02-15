import 'package:flutter/material.dart';

class FitnessDetailScreen extends StatefulWidget {
  const FitnessDetailScreen({super.key});

  @override
  State<FitnessDetailScreen> createState() => _FitnessDetailScreenState();
}

class _FitnessDetailScreenState extends State<FitnessDetailScreen> {
  String gender = 'Male';
  String Activity_level = 'Little or no exercise';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
            ),
            Text(
              'MATRIX UNITS',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.all(10.0)),
                Text(
                  'Age',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 40,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(20)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.all(10.0)),
                Text(
                  'Gender',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text(
                      'male',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Radio(
                        activeColor: Colors.green,
                        value: "Male",
                        groupValue: gender,
                        onChanged: (value) {
                          gender = "Male";
                          setState(() {});
                        }),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text(
                      'Female',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Radio(
                        activeColor: Colors.green,
                        value: "Female",
                        groupValue: gender,
                        onChanged: (value) {
                          gender = "Female";
                          setState(() {});
                        }),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.all(10.0)),
                Text(
                  'height',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 18.10,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(20)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(padding: const EdgeInsets.all(10.0)),
                Text(
                  'weight',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 18.10,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(20)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(padding: EdgeInsets.all(20)),
            Text(
              'ACTIVITY LEVEL',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text(
                'Little or no exercise',
                style: TextStyle(color: Colors.black),
              ),
              leading: Radio(
                  activeColor: Colors.green,
                  value: "Little or no exercise",
                  groupValue: Activity_level,
                  onChanged: (value) {
                    Activity_level = "Little or no exercise";
                    setState(() {});
                  }),
            ),
            ListTile(
              title: const Text(
                'Exercise 1-3 times/week',
                style: TextStyle(color: Colors.black),
              ),
              leading: Radio(
                  activeColor: Colors.green,
                  value: "Exercise 1-3 times/week",
                  groupValue: Activity_level,
                  onChanged: (value) {
                    Activity_level = "Exercise 1-3 times/week";
                    setState(() {});
                  }),
            ),
            ListTile(
              title: const Text(
                'Exercise 4-5 times/week',
                style: TextStyle(color: Colors.black),
              ),
              leading: Radio(
                  activeColor: Colors.green,
                  value: "Exercise 4-5 times/week",
                  groupValue: Activity_level,
                  onChanged: (value) {
                    Activity_level = "Exercise 4-5 times/week";
                    setState(() {});
                  }),
            ),
            ListTile(
              title: const Text(
                'Daily exercise or intense exercise 3-4times / week',
                style: TextStyle(color: Colors.black),
              ),
              leading: Radio(
                  activeColor: Colors.green,
                  value: "Daily exercise or intense exercise 3-4 times / week",
                  groupValue: Activity_level,
                  onChanged: (value) {
                    Activity_level =
                        "Daily exercise or intense exercise 3-4 times / week";

                    setState(() {});
                  }),
            ),
            ListTile(
              title: const Text(
                'intense exercise 6-7 times/week',
                style: TextStyle(color: Colors.black),
              ),
              leading: Radio(
                  activeColor: Colors.green,
                  value: "intense exercise 6-7 times/week",
                  groupValue: Activity_level,
                  onChanged: (value) {
                    Activity_level = "intense exercise 6-7 times/week";

                    setState(() {});
                  }),
            ),
            ListTile(
              title: const Text(
                'Very intense exercise daily,or physical job',
                style: TextStyle(color: Colors.black),
              ),
              leading: Radio(
                  activeColor: Colors.green,
                  value: "Very intense exercise daily,or physical job",
                  groupValue: Activity_level,
                  onChanged: (value) {
                    Activity_level =
                        "Very intense exercise daily,or physical job";

                    setState(() {});
                  }),
            ),
            SizedBox(
              height: 20,
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
                        'NEXT',
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
          ],
        ));
  }
}
