import 'package:flutter/material.dart';
import '../../components/reusable_primary_button.dart';
import '../../constants/text_style.dart';

class StorageNotEnough extends StatelessWidget {
  const StorageNotEnough({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/storage_not_enough.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 230,
            left: 30,
            child: Text(
              'Storage Not Enough',
              style: kTitleTextStyle.copyWith(
                color: const Color.fromARGB(255, 75, 75, 136),
              ),
            ),
          ),
          const Positioned(
            bottom: 170,
            left: 30,
            child: Text(
              'You don\'t have enough storage to\ncomplete this action.',
              style: kSubtitleTextStyle,
              textAlign: TextAlign.start,
            ),
          ),
          Positioned(
            bottom: 100,
            left: 30,
            right: 250,
            child: ReusablePrimaryButton(
              childText: 'Manage',
              buttonColor: const Color.fromARGB(255, 131, 131, 180), childTextColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
