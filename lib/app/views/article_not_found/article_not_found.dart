import 'package:flutter/material.dart';
import '../../components/reusable_primary_button.dart';
import '../../constants/text_style.dart';

class ArticleNotFound extends StatelessWidget {
  const ArticleNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/article_not_found.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          const Positioned(
            bottom: 260,
            left: 100,
            child: Text(
              'Article Not Found',
              style: kTitleTextStyle,
            ),
          ),
          const Positioned(
            bottom: 190,
            left: 50,
            child: Text(
              'Oops! The article you are looking for\nis not found.',
              style: kSubtitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 120,
            left: 130,
            right: 130,
            child: ReusablePrimaryButton(
              childText: 'Retry',
              buttonColor: Colors.green,
              childTextColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
