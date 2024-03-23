import 'package:fivenance/pages/training2.dart';
import 'package:fivenance/pages/training3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

void main() => runApp(const MaterialApp(home: Training()));

class Training extends StatefulWidget {
  const Training({super.key});

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3E3E3),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Training3()));
            },
            child: const Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image(
                    image: AssetImage('assets/trainingbg.jpg'),
                    fit: BoxFit.cover,
                    height: 250,
                    width: 330,
                  ),
                ),
                Positioned(
                  top: 155,
                  left: 20,
                  child: Text(
                    'Prime Picks:\nExclusive Courses',
                    style: TextStyle(
                      fontFamily: 'AbhayaLibre',
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 340,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              SizedBox(width: 35),
              SizedBox(
                height: 40,
                width: 250,
                child: Text(
                  'Courses',
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 12),
                  Row(
                    children: [
                      SizedBox(
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 6),
                      SizedBox(
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 200,
                          child: Image(
                            image: AssetImage('assets/principledaytrading.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Trading',
                              style: TextStyle(
                                fontFamily: "AbhayaLibre",
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Principles of Day\nTrading',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage('assets/people1.jpg'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Michael Smith',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Training2()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 200,
                            child: Image(
                              image: AssetImage('assets/course2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text(
                                'Financial Fraud',
                                style: TextStyle(
                                  fontFamily: "AbhayaLibre",
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text(
                                'FraudGuard: Protecting\nYour Finances',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage('assets/women.jpg'),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Emily Johnson',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 200,
                          child: Image(
                            image: AssetImage('assets/program3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Finance',
                              style: TextStyle(
                                fontFamily: "AbhayaLibre",
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Smart Money Moves',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 35),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage('assets/women2.jpg'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Eleanor Davies',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 200,
                          child: Image(
                            image: AssetImage('assets/program4.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Economics',
                              style: TextStyle(
                                fontFamily: "AbhayaLibre",
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Econ101: Your Essential\nGuide to Economics',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage('assets/man1.jpg'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'James Williams',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 200,
                          child: Image(
                            image: AssetImage('assets/program5.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Business',
                              style: TextStyle(
                                fontFamily: "AbhayaLibre",
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'From Idea to Empire:\nEntrepreneur\'s Roadmap',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage('assets/man2.jpg'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Kwame Ofori',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Row(
            children: [
              SizedBox(width: 35),
              SizedBox(
                height: 40,
                width: 250,
                child: Text(
                  'Mentor of The Weeks',
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 6),
                      SizedBox(
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 20),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/man1.jpg'),
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          Text(
                            'James Williams',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '4.9(1388 reviews)',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/women.jpg'),
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          Text(
                            'Emily Johnson',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '4.8(1022 reviews)',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/people1.jpg'),
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          Text(
                            'Michael Smith',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '4.6(666 reviews)',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
