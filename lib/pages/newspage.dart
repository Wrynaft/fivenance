// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 50),
          const Row(
            children: [
              SizedBox(width: 50),
              SizedBox(
                height: 160,
                width: 300,
                child: Text(
                  'Google Unveils \'Gemini\': Cutting-Edge AI Model Set to Revolutionize Machine Learning',
                  style: TextStyle(
                    fontFamily: 'AbhayaLibre',
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(width: 35),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://modernetiquetteinc.com/wp-content/uploads/sites/22/2018/05/professional-image.jpg'),
              ),
              SizedBox(width: 15),
              Text(
                'Jessie Beckham',
                style: TextStyle(
                  fontFamily: 'AbhayaLibre',
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 50),
              Text(
                '10 Mar 2024',
                style: TextStyle(
                  fontFamily: 'AbhayaLibre',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const SizedBox(
            height: 200,
            child: Image(
              image: NetworkImage(
                  'https://www.xevensolutions.com/wp-content/uploads/2024/02/Googles-Gemini-AI-Uses-Features-and-Industry-Impact-1.jpg'),
            ),
          ),
          Container(
            height: 300,
            padding: const EdgeInsets.all(20),
            child: const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                'Google has officially unveiled its highly anticipated AI model, "Gemini," ushering in a new era of innovation and advancement in the realm of artificial intelligence. With Gemini, Google aims to revolutionize machine learning by introducing a sophisticated model that boasts unparalleled capabilities and performance.\nHarnessing the power of cutting-edge algorithms and state-of-the-art techniques, Gemini is poised to tackle complex challenges across a multitude of domains. From natural language processing to computer vision and beyond, this versatile AI model promises to push the boundaries of what is possible, unlocking new opportunities for discovery and innovation.\nAt its core, Gemini represents a significant leap forward in AI research and development. Built upon a foundation of extensive training data and advanced neural network architectures, this groundbreaking model exhibits exceptional proficiency in handling a wide range of tasks with precision and efficiency.\nWith its introduction, Google aims to empower researchers, developers, and businesses alike with a powerful tool that can drive transformative advancements in various fields. Whether it\'s enhancing language understanding, improving image recognition, or enabling breakthroughs in healthcare and beyond, Gemini stands ready to propel the world of AI into uncharted territory.\nAs Google continues to lead the charge in AI innovation, the unveiling of Gemini underscores the company\'s commitment to pushing the boundaries of what AI can achieve. With its unparalleled capabilities and potential, Gemini represents not just a milestone in AI research but a catalyst for a future where artificial intelligence plays an increasingly vital role in shaping our world.',
                style: TextStyle(
                  fontFamily: 'AbhayaLibre',
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
