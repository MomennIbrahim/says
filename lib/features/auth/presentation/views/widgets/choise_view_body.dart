import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:says_app/core/widgets/custom_buttom.dart';
import 'package:says_app/core/widgets/custom_gradient_container.dart';

import '../../../../../core/utils/styles.dart';

class ChoiseViewBody extends StatelessWidget {
  const ChoiseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomGradientContainer(
              isSvg: true,
              isHomeView: false,
              image: 'assets/images/qr.svg',
            ),
            const SizedBox(
              height: 22.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.5),
              child: Expanded(
                child: Text(
                  'فقط امسح الكودالذي تريدة',
                  textAlign: TextAlign.center,
                  style: Styles.style30,
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.5),
              child: Expanded(
                child: Text(
                  'استكشف الاشياء التي بجانبك فقط بعملية مسح واحدة',
                  textAlign: TextAlign.center,
                  style: Styles.style22.copyWith(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 44.0),
            CustomButton(text: 'تسجيل الدخول',onPressed: (){})
          ],
        ),
      ),
    );
  }
}
