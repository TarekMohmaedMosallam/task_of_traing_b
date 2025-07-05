import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Screen/OnBoardingScreen.dart';

class Splashscreenbranch extends StatefulWidget {
  const Splashscreenbranch({super.key});

  @override
  State<Splashscreenbranch> createState() => _SplashscreenbranchState();
}

class _SplashscreenbranchState extends State<Splashscreenbranch>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    Future.delayed(Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => Onboardingscreen()));
    });
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/Slpash_Screen/01 - Statistics.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
