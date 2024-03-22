// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Training2 extends StatefulWidget {
  const Training2({super.key});

  @override
  State<Training2> createState() => _Training2State();
}

class _Training2State extends State<Training2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3E3E3),
      body: Column(
        children: [
          const SizedBox(
            height: 200,
            width: double.infinity,
            child: Image(
              image: NetworkImage('https://appinventiv.com/wp-content/uploads/2021/12/How-Machine-Learning-Helps-in-Financial-Fraud-Detection-in-the-FinTech-Industry-01-scaled.webp'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.white,
            height: 230,
            width: double.infinity,
            child: Column(
              children: [
                const Row(
                  children: [
                    SizedBox(width: 20),
                    SizedBox(
                      height: 20,
                      child: Text(
                        'Financial Fraud',
                        style: TextStyle(
                          fontFamily: 'AbhayaLibre-ExtraBold',
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(width: 20),
                    SizedBox(
                      height: 65,
                      child: Text(
                        'FraudGuard:\nProtecting Your Finances',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'AbhayaLibre-ExtraBold',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      child: Text(
                        '4.8 by Emily Johnson',
                        style: TextStyle(
                          fontFamily: 'AbhayaLibre-ExtraBold',
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  height: 100,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      'With expert guidance and real-world examples, FraudGuard empowers participants to take proactive steps to protect their financial assets and minimize the risk of falling victim to fraud. Join us in mastering the art of financial security and safeguarding your financial future with FraudGuard: Protecting Your Finances.',
                      style: TextStyle(
                        fontFamily: 'AbhayaLibre-ExtraBold',
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              SizedBox(width: 35),
              SizedBox(
                height: 25,
                width: 250,
                child: Text(
                  'Lessons',
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre-ExtraBold',
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        child: Text(
                          'See all',
                          style: TextStyle(
                              fontFamily: 'AbhayaLibre-ExtraBold',
                              fontSize: 20,
                              color: Colors.grey
                          ),
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
          SizedBox(
            height: 200,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: Container(
                    height: 80,
                    width: 350,
                    color: Colors.white,
                    child: const Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 120,
                          child: Image(
                            image: NetworkImage('https://happay.com/blog/wp-content/uploads/sites/12/2022/08/types-of-financial-frauds.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          child: Text(
                            '1. Introduction to\n    Financial Fraud',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'AbhayaLibre-ExtraBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: Container(
                    height: 80,
                    width: 350,
                    color: Colors.white,
                    child: const Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 120,
                          child: Image(
                            image: NetworkImage('https://bernama.com/storage/photos/1621ca827268e3f873bf82d9e0b83e3d5fc6352723610'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          child: Text(
                            '2. Identifying\n    Fraudulent Activity',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'AbhayaLibre-ExtraBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: Container(
                    height: 80,
                    width: 350,
                    color: Colors.white,
                    child: const Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 120,
                          child: Image(
                            image: NetworkImage('https://cioafrica.co/wp-content/uploads/2024/01/cyber-security.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          child: Text(
                            '3. Security Best\n    Practices',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'AbhayaLibre-ExtraBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: Container(
                    height: 80,
                    width: 350,
                    color: Colors.white,
                    child: const Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 120,
                          child: Image(
                            image: NetworkImage('https://media.istockphoto.com/id/1422164584/photo/help-needed-sign-held-up-by-man-against-blue-sky-background.jpg?s=612x612&w=0&k=20&c=iLpNdPgEgEjAyallQgv0RFpjpEj5jaBKMOkfr8W00z8='),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          child: Text(
                            '4. Responding to\n  Fraudulent Incidents',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'AbhayaLibre-ExtraBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: Container(
                    height: 80,
                    width: 350,
                    color: Colors.white,
                    child: const Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 120,
                          child: Image(
                            image: NetworkImage('https://eurisko.net/wp-content/uploads/2023/11/ai-financial-fraud-detection.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          child: Text(
                            '5. Adapting to\n    Emerging Threats',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'AbhayaLibre-ExtraBold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Container(
              height: 84,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(width: 25),
                  const SizedBox(
                    child: Text(
                      '\$ 40.95',
                      style: TextStyle(
                        fontFamily: 'AbhayaLibre-ExtraBold',
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 100),
                  SizedBox(
                    height: 84,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: Container(
                        color: Colors.black,
                        child: const Center(
                          child: Text(
                            'Enroll Now',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre-ExtraBold',
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}