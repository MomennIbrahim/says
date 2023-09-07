import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:go_router/go_router.dart';
import 'package:says_app/core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late FlutterGifController controller1;

  @override
  void initState() {

    super.initState();

    controller1 = FlutterGifController(vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller1.repeat(
        min: 0,
        max: 53,
        period: const Duration(milliseconds: 2000),
      );
    });
    navigateToOtherPage();
  }
  @override
  void dispose() {
    super.dispose();
    controller1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/images/Logo-image.png')),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 8.0,
              width: 152.0,
              color: Colors.red,
            ),
            const SizedBox(
              height: 37.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width /2,
              height: 178.0,
              child: FittedBox(
                fit: BoxFit.cover,
                child: GifImage(
                  controller: controller1,
                  image: const AssetImage(
                    "assets/images/Gif.gif",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void navigateToOtherPage() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        GoRouter.of(context).pushReplacement(AppRouter.kLayoutView);
      },
    );
  }
}
