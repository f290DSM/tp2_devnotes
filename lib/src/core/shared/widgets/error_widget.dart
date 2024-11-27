import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InternalErrorWidget extends StatelessWidget {
  const InternalErrorWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/internal_error.svg',
            height: MediaQuery.sizeOf(context).height * .4,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(message),
          )
        ],
      ),
    );
  }
}
