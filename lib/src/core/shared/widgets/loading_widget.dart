import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key, this.size = 150});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: LoadingIndicator(
          indicatorType: Indicator.ballRotateChase,
          colors: [
            Colors.blue.shade500.withOpacity(0.75),
            Colors.blue.shade300.withOpacity(0.75),
            Colors.blue.shade200.withOpacity(0.75),
            Colors.blue.shade100.withOpacity(0.75),
          ],
        ),
      ),
    );
  }
}
