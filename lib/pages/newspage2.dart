// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class NewsPage2 extends StatefulWidget {
  const NewsPage2({super.key});

  @override
  State<NewsPage2> createState() => _NewsPage2State();
}

class _NewsPage2State extends State<NewsPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 300,
            child: Image(
              image: AssetImage('assets/trading.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            height: 80,
            width: 380,
            child: Text(
              'Market Surges as Tech Stocks Rally: Breaking News in Trending',
              style: TextStyle(
                fontFamily: 'AbhayaLibre',
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          const Row(
            children: [
              SizedBox(width: 8),
              Text(
                'Author:  Eleanor Chang  |  10 Mar 2024',
                style: TextStyle(
                  fontFamily: 'AbhayaLibre',
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Container(
            height: 350,
            padding: const EdgeInsets.all(20),
            child: const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                'In a sudden and unexpected turn of events, the stock market experienced a significant surge today as tech stocks rallied across the board. \n\nInvestors were caught off guard by the sudden upswing, with major indices showing remarkable gains within just hours of trading.The surge was led by a remarkable uptick in the technology sector, with giants like Apple, Amazon, and Microsoft all posting substantial gains. Analysts attribute the rally to a combination of positive earnings reports, renewed investor confidence in the tech industry, and anticipation of upcoming product releases and innovations."The strength of the tech sector today is truly remarkable," stated financial analyst Sarah Johnson. "Investors seem to be betting heavily on the potential for continued growth and innovation in the technology space."\n\nThe surge in tech stocks also had a ripple effect across other sectors, with many companies experiencing gains as well. Industries such as healthcare, finance, and consumer goods all saw increases as investor optimism spread throughout the market.Despite the overall positive sentiment, some analysts caution that the rapid ascent of tech stocks may be unsustainable in the long term. Concerns over inflation, rising interest rates, and geopolitical tensions continue to loom large, casting a shadow of uncertainty over the market\'s future trajectory.\n\nHowever, for now, investors are reveling in the unexpected rally, with many hoping that today\'s gains will mark the beginning of a sustained upward trend. As the trading day comes to a close, all eyes will be on how the market performs in the days and weeks ahead.',
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
