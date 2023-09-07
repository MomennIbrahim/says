import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:says_app/core/utils/constatnce.dart';
import 'package:says_app/core/widgets/custom_buttom.dart';
import 'package:says_app/core/widgets/custom_gradient_container.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomGradientContainer(
          image: 'assets/images/qr.svg',
          isSvg: true,
          isHomeView: true,
        ),
        const SizedBox(
          height: 35.0,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurStyle: BlurStyle.solid,
                    offset: const Offset(0, 3),
                    blurRadius: 7,
                    spreadRadius: 4,
                  )
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 19.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: CustomButton(
                            text: 'الطلبات',
                            onPressed: () {},
                          )),
                          Expanded(
                              child: CustomButton(
                            onPressed: () {},
                            text: 'طلباتي',
                            backgroundColor: Colors.white,
                            textColor: kPrimaryColor,
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/qr.svg',
                                width: 80,
                                height: 80,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Expanded(
                                  child: Text(
                                'مادونا سعيد',
                                style: TextStyle(color: kPrimaryColor),
                              )),
                              const Spacer(),
                              const Text('مغلق'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    itemCount: 5,
                  ),
                )
              ],
            ),
          ),
        )),
      ],
    );
  }
}
