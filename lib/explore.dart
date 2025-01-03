import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            DateFormat('dd/mm/yyyy').format(DateTime.now()),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: (20)),
          ),
          SizedBox(
            height: (10),
          ),
          Row(
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    'S ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )),
              SizedBox(
                width: (5),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    'M',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              SizedBox(
                width: (5),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    'T',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              SizedBox(
                width: (5),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    'W ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              SizedBox(
                width: (5),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    'T ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
              SizedBox(
                width: (5),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    'F ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
            ],
          ),
          Row(
            children: [
              Text(
                'Good Morning',
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Todays Report',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: (20)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Center(
                  child: Container(
                    child: Text(
                      'base goal ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    color: Colors.grey[600],
                    width: 150,
                    height: 170,
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'base goal ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                color: Colors.grey[600],
                width: 150,
                height: 170,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    child: Text(
                      'base goal ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    color: Colors.grey[600],
                    width: 150,
                    height: 170,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  child: Text(
                    'base goal ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.grey[600],
                  width: 150,
                  height: 170,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
