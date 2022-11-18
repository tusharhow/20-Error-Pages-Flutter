import 'package:flutter/material.dart';
import '../../components/reusable_primary_button.dart';
import '../../constants/text_style.dart';

class LocationError extends StatelessWidget {
  const LocationError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/location_error.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          const Positioned(
            bottom: 260,
            left: 120,
            child: Text(
              'Location Access',
              style: kTitleTextStyle,
            ),
          ),
          const Positioned(
            bottom: 190,
            left: 70,
            child: Text(
              'Please enable location access to\nuse this app.',
              style: kSubtitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 120,
            left: 130,
            right: 130,
            child: ReusablePrimaryButton(
              childText: 'Enable',
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
