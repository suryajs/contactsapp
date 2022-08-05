import 'package:flutter/material.dart';


class MainPageState extends StatefulWidget {
  const MainPageState({Key? key}) : super(key: key);

  @override
  State<MainPageState> createState() => _MainPageStateState();
}

class _MainPageStateState extends State<MainPageState> {
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildText(),
        ],
      ),
    );
  }
  Widget buildTop() {
    final top = coverHeight - profileHeight / 1.75;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        buildCoverImage(),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://images.unsplash.com/photo-1658156682642-cc75d80bd589?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildText() => Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 8),
          Padding(padding: EdgeInsets.only(top: 100)),
          Text('Jayasurya K',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          Text(
            'Student',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(100, 0, 0, 0),
            ),
          ),
          Text(
            '202IT146',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(100, 0, 0, 0),
            ),
          ),
          Text(
            'Information Technology',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(100, 0, 0, 0),
            ),
          ),
          Text('',
              style: TextStyle(
                fontSize: 20,
              )),
          Divider(
            color: Colors.black,
          ),
          Text('',
              style: TextStyle(
                fontSize: 20,
              )),
          Row(
            children: [
              Text(' Phone Number: ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                '9843053232',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(100, 0, 0, 0),
                ),
              ),
            ],
          ),
          Text('',
              style: TextStyle(
                fontSize: 20,
              )),
          Row(
            children: [
              Text(' Landline: ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                '04295226215',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(100, 0, 0, 0),
                ),
              ),
            ],
          ),
          Text('',
              style: TextStyle(
                fontSize: 20,
              )),
          Row(
            children: [
              Text(' Mail ID: ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                'jayasurya.it20@bitsathy.ac.in',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(100, 0, 0, 0),
                ),
              ),
            ],
          ),
          Text('',
              style: TextStyle(
                fontSize: 20,
              )),
        ]),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 1.75,
        backgroundColor: Colors.grey.shade400,
        backgroundImage: AssetImage(
            'assets/images/img2.jpg'),
      );
  }
