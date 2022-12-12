import 'package:flutter/material.dart';
import 'package:booking_app/config/config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.type = SecondaryButtonType.type3,
    required this.onPressed,
    required this.text,
    this.width = 78,
  });

  final SecondaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == SecondaryButtonType.type1
        ? _type1()
        : type == SecondaryButtonType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width,
      height: 24.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColor.ink06,
          side: const BorderSide(color: AppColor.ink01),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Text(
          text,
          style: AppFont.componentSmall,
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width,
      height: 32.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColor.ink06,
          side: const BorderSide(color: AppColor.ink01),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Text(
          text,
          style: AppFont.componentMediumBold,
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width,
      height: 55.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColor.ink06,
          side: const BorderSide(color: AppColor.ink01),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Text(
          text,
          style: AppFont.componentLarge,
        ),
      ),
    );
  }
}

enum SecondaryButtonType {
  type1,
  type2,
  type3,
}
