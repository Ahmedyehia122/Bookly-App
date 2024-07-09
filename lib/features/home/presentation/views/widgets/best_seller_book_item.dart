import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtiJKuQkGMitVsqqDyAppVphB6JCTlpEl8_tytAzIVrG-z5NgLGQcQb8uCeQDF7ueRI0w&usqp=CAU';
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(testImage),
          ),
        ),
      ),
    );
  }
}
