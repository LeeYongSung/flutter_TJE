import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: []);
    return SafeArea(
      // 안정영역 사용 여부
      top: true,
      bottom: true,
      left: false,
      right: false,
      minimum: const EdgeInsets.all(10),
      maintainBottomViewPadding: true,
      child: Scaffold(
        body: Container(
          height: 1000,
          color: Colors.blue,
        ),
      ),
    );
  }
}
