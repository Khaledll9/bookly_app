import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomBookIamgeItem extends StatelessWidget {
  const CustomBookIamgeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        width: 100,
        height: 40,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(kTestImage),
          ),
        ),
      ),
    );
  }
}
