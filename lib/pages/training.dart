import 'package:fivenance/pages/training2.dart';
// import 'package:flutter/cupertino.dart';
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
          const Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image(
                  image: NetworkImage('https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTEwL3Jhd3BpeGVsb2ZmaWNlMjFfc2ltcGxlX2JsdWVfbW9uZXlfYnVzaW5lc3NfZ3JhcGhfZmluYW5jZV9zaW1wbF8xYTVjMmM5Yi1kN2U3LTRkMTUtYTY1Mi04Y2QwODIyM2RiYmYtYy5qcGc.jpg'),
                  fit: BoxFit.cover,
                  height: 250,
                  width: 330,
                ),
              ),
              Positioned(
                top:155,
                left: 20,
                child: Text(
                  'Prime Picks:\nExclusive Courses',
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre-ExtraBold',
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
                    fontFamily: 'AbhayaLibre-ExtraBold',
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
                            image: NetworkImage('https://www.ironfx.com/wp-content/uploads/2022/10/beginner-trader-forex-market.jpg'),
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
                                fontFamily: "AbhayaLibre-ExtraBold",
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
                                fontFamily: 'AbhayaLibre-ExtraBold',
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
                              backgroundImage: NetworkImage('https://cdn.luxe.digital/media/2019/09/12090502/business-professional-dress-code-men-style-luxe-digital.jpg'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Michael Smith',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre-ExtraBold',
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
                      MaterialPageRoute(builder: (context) => const Training2()),
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
                              image: NetworkImage('https://appinventiv.com/wp-content/uploads/2021/12/How-Machine-Learning-Helps-in-Financial-Fraud-Detection-in-the-FinTech-Industry-01-scaled.webp'),
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
                                  fontFamily: "AbhayaLibre-ExtraBold",
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
                                  fontFamily: 'AbhayaLibre-ExtraBold',
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
                                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/023/886/157/small/young-smiling-businesswoman-standing-in-blur-background-of-office-generative-ai-photo.jpg'),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Emily Johnson',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre-ExtraBold',
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
                            image: NetworkImage('https://static.vecteezy.com/system/resources/previews/006/921/796/non_2x/financial-literacy-concept-free-vector.jpg'),
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
                                fontFamily: "AbhayaLibre-ExtraBold",
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
                                fontFamily: 'AbhayaLibre-ExtraBold',
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
                              backgroundImage: NetworkImage('https://images.forwardcdn.com/image/970x/center/images/cropped/istock-627909282-1514234385.jpg'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Eleanor Davies',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre-ExtraBold',
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
                            image: NetworkImage('https://media.geeksforgeeks.org/wp-content/uploads/20230622153258/ECONOMICS-LANDING-PAGE-copy.webp'),
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
                                fontFamily: "AbhayaLibre-ExtraBold",
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
                                fontFamily: 'AbhayaLibre-ExtraBold',
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
                              backgroundImage: NetworkImage('https://www.bcjobs.ca/blog/wp-content/uploads/2019/04/12-ways-confident-professional-at-work-comp.jpg'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'James Williams',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre-ExtraBold',
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
                            image: NetworkImage('https://img.freepik.com/free-photo/office-cityscape-builidings-contemporary-interior-room-modern-concept_53876-14120.jpg'),
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
                                fontFamily: "AbhayaLibre-ExtraBold",
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
                                fontFamily: 'AbhayaLibre-ExtraBold',
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
                              backgroundImage: NetworkImage('https://www.workitdaily.com/media-library/happy-successful-professional-man-holding-a-tablet.jpg?id=25967282&width=980'),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Kwame Ofori',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre-ExtraBold',
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
                    fontFamily: 'AbhayaLibre-ExtraBold',
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
                        backgroundImage: NetworkImage('https://www.bcjobs.ca/blog/wp-content/uploads/2019/04/12-ways-confident-professional-at-work-comp.jpg'),
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          Text(
                            'James Williams',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre-Extrabold',
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
                                  fontFamily: 'AbhayaLibre-ExtraBold',
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
                        backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/023/886/157/small/young-smiling-businesswoman-standing-in-blur-background-of-office-generative-ai-photo.jpg'),
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          Text(
                            'Emily Johnson',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre-Extrabold',
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
                                  fontFamily: 'AbhayaLibre-ExtraBold',
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
                        backgroundImage: NetworkImage('https://cdn.luxe.digital/media/2019/09/12090502/business-professional-dress-code-men-style-luxe-digital.jpg'),
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          Text(
                            'Michael Smith',
                            style: TextStyle(
                              fontFamily: 'AbhayaLibre-Extrabold',
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
                                  fontFamily: 'AbhayaLibre-ExtraBold',
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