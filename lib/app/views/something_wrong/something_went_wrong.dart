import 'package:flutter/material.dart';
import '../../components/reusable_primary_button.dart';
import '../../constants/text_style.dart';

class SomethingWentWrong extends StatelessWidget {
  const SomethingWentWrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/something_went_wrong.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          const Positioned(
            bottom: 230,
            left: 160,
            child: Text(
              'Oh no!',
              style: kTitleTextStyle,
            ),
          ),
          const Positioned(
            bottom: 170,
            left: 100,
            child: Text(
              'Something went wrong,\nplease try again.',
              style: kSubtitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 100,
            left: 130,
            right: 130,
            child: ReusablePrimaryButton(
              childText: 'Try Again',
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
