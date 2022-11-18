import 'package:flutter/material.dart';
import '../../components/reusable_primary_button.dart';
import '../../constants/text_style.dart';

class FileNotFoundDark extends StatelessWidget {
  const FileNotFoundDark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/file_not_found_second.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 200,
            left: 30,
            child: Text(
              'File Not Found',
              style: kTitleTextStyle.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 140,
            left: 30,
            child: Text(
              'Oops! The file you are looking for\nis not found',
              style: kSubtitleTextStyle.copyWith(
                color: Colors.white54,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Positioned(
            bottom: 70,
            left: 30,
            right: 250,
            child: ReusablePrimaryButton(
              childText: 'Home',
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
