import 'package:flutter/material.dart';

import '../../components/reusable_primary_button.dart';
import '../../constants/text_style.dart';

class BrokenLink extends StatelessWidget {
  const BrokenLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/broken_link.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          const Positioned(
            bottom: 230,
            left: 30,
            child: Text(
              'Broken Link',
              style: kTitleTextStyle,
            ),
          ),
          const Positioned(
            bottom: 170,
            left: 30,
            child: Text(
              'The link you followed may be broken,\nor the page may have been removed.',
              style: kSubtitleTextStyle,
              textAlign: TextAlign.start,
            ),
          ),
          Positioned(
            bottom: 60,
            left: 40,
            right: 40,
            child: ReusablePrimaryButton(
              childText: 'Go Back', buttonColor:  Colors.blue[800]!, childTextColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
