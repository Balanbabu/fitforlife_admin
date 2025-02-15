import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'PROFILE',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(
                'https://st2.depositphotos.com/2703645/7303/v/450/depositphotos_73039841-stock-illustration-male-avatar-icon.jpg'),
          ),
        ),
        Text(
          'SHANE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: [
              CircleAvatar(
                  backgroundImage: NetworkImage(
                'https://i.fbcd.co/products/resized/resized-750-500/881dcc1b4fc9fba9cb752e2ec526fab3944c22628c2ea5312f44379c4d294119.jpg',
              )),
              SizedBox(
                width: 120,
              ),
              CircleAvatar(
                  backgroundImage: NetworkImage(
                'https://img.freepik.com/premium-vector/fire-flame-icon-vector-flame-sticker_611881-590.jpg',
              )),
              SizedBox(
                width: 100,
              ),
              CircleAvatar(
                  backgroundImage: NetworkImage(
                'https://cdn1.vectorstock.com/i/1000x1000/51/55/icon-biceps-simple-vector-33955155.jpg',
              )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [
              Text('2h'),
              SizedBox(width: 120),
              Text('7000 cal'),
              SizedBox(width: 120),
              Text('2')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text('total time'),
              SizedBox(width: 100),
              Text('Burned'),
              SizedBox(width: 110),
              Text('Done')
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        const ColoredBox(
          color: Colors.white,
          child: Material(
            child: ListTile(
              title: Text('change username'),
              tileColor: Colors.white,
            ),
          ),
        ),
        const ColoredBox(
          color: Colors.green,
          child: Material(
            child: ListTile(
              title: Text('change password'),
              tileColor: Colors.white,
            ),
          ),
        ),
        const ColoredBox(
          color: Colors.green,
          child: Material(
            child: ListTile(
              title: Text('start new goal'),
              tileColor: Colors.white,
            ),
          ),
        ),
        const ColoredBox(
          color: Colors.green,
          child: Material(
            child: ListTile(
              title: Text('create new account'),
              tileColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
