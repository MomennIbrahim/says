import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:says_app/core/utils/constatnce.dart';
import 'package:says_app/core/utils/styles.dart';
import 'package:says_app/core/widgets/custom_buttom.dart';
import 'package:says_app/core/widgets/custom_gradient_container.dart';
import 'package:says_app/features/home/presentation/views/home_view.dart';

class PrivateProfileViewBody extends StatelessWidget {
  const PrivateProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomGradientContainer(
              image: 'assets/images/qr.svg', isSvg: true, isHomeView: true),
          const SizedBox(
            height: 79.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/LockClosedOutline.svg'),
              const SizedBox(
                width: 4.0,
              ),
              const Text(
                'هذا الحساب خاص',
                style: Styles.style24,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: CustomButton(
                  text: 'ابعت رسالة',
                  onPressed: () {},
                  paddingHorizontal: 3.5,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                )),
                Expanded(
                    child: CustomButton(
                  text: 'طلب',
                  onPressed: () {},
                  paddingHorizontal: 3.5,
                )),
              ],
            ),
          ),
          const SizedBox(
            height: 22.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Container(
              height: 55.0,
              decoration:
                  BoxDecoration(color: const Color(0xffF4F4F4), boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurStyle: BlurStyle.solid,
                  offset: const Offset(0, 3),
                  blurRadius: 7,
                  spreadRadius: 4,
                )
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'عربية حضرتك راكنة صف تاني عليا',
                      style: Styles.style14
                          .copyWith(color: const Color.fromRGBO(0, 0, 0, 0.54)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.send),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
