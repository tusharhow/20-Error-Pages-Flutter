import 'package:flutter/material.dart';
import '../../components/reusable_primary_button.dart';
import '../../constants/text_style.dart';


class NoConnection extends StatelessWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Connection_Lost.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          const Positioned(
            bottom: 200,
            left: 30,
            child: Text(
              'No Connection',
              style: kTitleTextStyle,
            ),
          ),
          const Positioned(
            bottom: 150,
            left: 30,
            child: Text(
              'Please check your internet connection\nand try again.',
              style: kSubtitleTextStyle,
              textAlign: TextAlign.start,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 40,
            right: 40,
            child: ReusablePrimaryButton(
              childText: 'Retry',
              buttonColor: Colors.blue[800]!,
              childTextColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
