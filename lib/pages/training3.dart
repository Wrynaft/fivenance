// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

class Training3 extends StatefulWidget {
  const Training3({super.key});

  @override
  State<Training3> createState() => _Training3State();
}

class _Training3State extends State<Training3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C1C3C),
      body: Column(
        children: [
          const Stack(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image(
                  image: NetworkImage(
                      'https://t3.ftcdn.net/jpg/05/67/04/42/360_F_567044238_BiO9PpFi4XKUzoempXmuu6jqPJvbWiRu.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 150,
                left: 25,
                child: Text(
                  'This Week\'s Hot Topic',
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 570,
            width: double.infinity,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
                  child: Container(
                    height: 250,
                    width: 300,
                    color: Colors.white,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: SizedBox(
                            height: 125,
                            width: 280,
                            child: Image(
                              image: NetworkImage(
                                  'https://wallpapercave.com/wp/wp2128301.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            SizedBox(
                              child: Text(
                                'Mastering the Stock Market:\nStrategies for Success',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://media.istockphoto.com/id/1386217759/photo/portrait-of-a-confident-young-businesswoman-standing-against-an-urban-background.jpg?s=612x612&w=0&k=20&c=fAzBj4UAksz3wwAjXxKxByZMqDSuqQZSTij7jBiPtJc='),
                              radius: 15,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Jennifer Lawrence',
                              style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 17,
                                  color: Colors.grey),
                            ),
                            SizedBox(width: 50),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Text(
                              '4.9',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 25,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: Container(
                    height: 250,
                    width: 300,
                    color: Colors.white,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: SizedBox(
                            height: 125,
                            width: 280,
                            child: Image(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1560179707-f14e90ef3623?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29tcGFueXxlbnwwfHwwfHx8MA%3D%3D'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            SizedBox(
                              child: Text(
                                'Business Essentials:\nFrom Idea to Execution',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://media.istockphoto.com/id/1096419446/photo/modern-cheerful-business-man-in-deep-blue-shirt-standing-with-crossed-arms-isolated-on-gray.jpg?s=612x612&w=0&k=20&c=r4f-QedoEjL9KU-H96imU5UI5594wFUj2A9PgD8JXGY='),
                              radius: 15,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Tom Hank',
                              style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 17,
                                  color: Colors.grey),
                            ),
                            SizedBox(width: 110),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 25,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: Container(
                    height: 250,
                    width: 300,
                    color: Colors.white,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: SizedBox(
                            height: 125,
                            width: 280,
                            child: Image(
                              image: NetworkImage(
                                  'https://churchexecutive.b-cdn.net/wp-content/uploads/2017/07/ThinkstockPhotos-479413254.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            SizedBox(
                              child: Text(
                                'Financial Fraud:\nDetection & Prevention',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://az505806.vo.msecnd.net/cms/49bcf23b-16f2-47a8-8571-a6a360910814/91f8412f-791a-443a-a607-6316d1eb757c-lg.jpg'),
                              radius: 15,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Malik Johnson',
                              style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 17,
                                  color: Colors.grey),
                            ),
                            SizedBox(width: 80),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Text(
                              '4.8',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 25,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: Container(
                    height: 250,
                    width: 300,
                    color: Colors.white,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: SizedBox(
                            height: 125,
                            width: 280,
                            child: Image(
                              image: NetworkImage(
                                  'https://img.freepik.com/free-vector/illustration-data-analysis-graph_53876-20423.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            SizedBox(
                              child: Text(
                                'Financial Mastery: \nStrategies for Wealth Creation',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.ctfassets.net/vztl6s0hp3ro/2Zg9Mth4qC5EGGWHoJIy9T/3f0dbdf8884231a3e9e7998c514cc1fa/Unleash-employee-potential-with-personal-professional-development-examples.jpg'),
                              radius: 15,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'John Stones',
                              style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 17,
                                  color: Colors.grey),
                            ),
                            SizedBox(width: 90),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Text(
                              '4.7',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 25,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                  child: Container(
                    height: 250,
                    width: 300,
                    color: Colors.white,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: SizedBox(
                            height: 125,
                            width: 280,
                            child: Image(
                              image: NetworkImage(
                                  'https://img.freepik.com/premium-photo/silhouette-man-standing-holding-flag_50039-1879.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            SizedBox(
                              child: Text(
                                'Success Unleashed:\nMaximize Your Potential',
                                style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 16),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://headshots-inc.com/wp-content/uploads/2023/02/professional-headshot-photography-example-7-1.jpg'),
                              radius: 15,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Harry Maguire',
                              style: TextStyle(
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 17,
                                  color: Colors.grey),
                            ),
                            SizedBox(width: 70),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Text(
                              '4.7',
                              style: TextStyle(
                                fontFamily: 'AbhayaLibre',
                                fontSize: 25,
                                color: Colors.yellow,
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
        ],
      ),
    );
  }
}
