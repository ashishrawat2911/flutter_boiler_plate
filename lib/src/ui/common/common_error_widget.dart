import 'package:flutter/material.dart';

import 'common_button.dart';

class CommonErrorWidget extends StatelessWidget {
  final String imageAsset;
  final String errorMessage;
  final String buttonTitle;
  final VoidCallback onButtonTap;

  CommonErrorWidget(
      {@required this.imageAsset,
      @required this.errorMessage,
      @required this.buttonTitle,
      @required this.onButtonTap}) {
    assert(imageAsset != null);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageAsset,
            height: 60,
            width: 60,
          ),
          SizedBox(
            height: 10,
          ),
          Text(errorMessage),
          SizedBox(
            height: 10,
          ),
          CommonButton(
            title: buttonTitle,
            onTap: onButtonTap,
          )
        ],
      ),
    ));
  }
}
