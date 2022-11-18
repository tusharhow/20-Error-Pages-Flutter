import 'package:flutter/material.dart';
import '../../components/reusable_primary_button.dart';
import '../../constants/text_style.dart';

class LocationErrorDark extends StatelessWidget {
  const LocationErrorDark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/location_error_second.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 230,
            left: 30,
            child: Text(
              'Hang on a sec!',
              style: kTitleTextStyle.copyWith(color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 170,
            left: 30,
            child: Text(
              'It seems you' 're in the middle of\nthe ocean',
              style: kSubtitleTextStyle.copyWith(color: Colors.white54),
              textAlign: TextAlign.start,
            ),
          ),
          Positioned(
            bottom: 100,
            left: 30,
            right: 250,
            child: ReusablePrimaryButton(
              childText: 'Refresh',
              buttonColor: Colors.white,
              childTextColor: Colors.black,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
