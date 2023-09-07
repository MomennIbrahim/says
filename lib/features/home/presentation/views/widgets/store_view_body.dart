import 'package:flutter/material.dart';
import 'package:says_app/core/utils/constatnce.dart';
import 'package:says_app/features/home/presentation/views/widgets/build_bottom_sheet.dart';
import 'package:says_app/features/home/presentation/views/widgets/container_on_stack.dart';
import 'package:says_app/features/home/presentation/views/widgets/custom_stepper.dart';
import 'package:says_app/features/home/presentation/views/widgets/custom_vertical_divider.dart';
import '../../../../../core/utils/styles.dart';

class StoreViewBody extends StatelessWidget {
  const StoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const ContainerOnStack(text: 'الحساب الشخصي'),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55.0),
                  topRight: Radius.circular(55.0)),
              color: Color(0xffF4F4F4),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 46.0, left: 46.0, top: 31.0, bottom: 20.0),
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  //set border radius more than 50% of height and width to make circle
                ),
                color: Colors.white,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 17.0),
                          child: Text(
                            'إنه مجاني تمامًا',
                            style: Styles.style20,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 31.0,
                      ),
                      CustomStepper(
                          text: 'تسجيل دخول',
                          onPressed: () {},
                          isLogin: true,
                          isDone: true),
                      const CustomVerticalDivider(),
                      CustomStepper(
                          text: 'ابحث عن أقرب نقطة لك',
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                elevation: 1.0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0)),
                                ),
                                builder: (context) {
                                  return const BuildBottomSheet();
                                });
                          },
                          isLogin: false,
                          isDone: false),
                      const CustomVerticalDivider(),
                      CustomStepper(
                          text: 'حدد أقرب نقطة لك',
                          onPressed: () {},
                          isLogin: false,
                          isDone: false),
                      const CustomVerticalDivider(),
                      CustomStepper(
                          text: 'تم تأكيد',
                          onPressed: () {},
                          isLogin: false,
                          isDone: false),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
