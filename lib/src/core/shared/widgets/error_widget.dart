import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InternalErrorWidget extends StatelessWidget {
  const InternalErrorWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/images/internal_error.svg',
        height: MediaQuery.sizeOf(context).height * .5,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
