import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:says_app/core/utils/constatnce.dart';
import 'package:says_app/core/utils/styles.dart';
import 'package:says_app/core/widgets/custom_buttom.dart';
import 'package:says_app/core/widgets/custom_gradient_container.dart';
import 'package:says_app/features/home/presentation/views/widgets/custom_divider.dart';
import 'package:says_app/features/home/presentation/views/widgets/row_details.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomGradientContainer(
              image: 'assets/images/qr.svg', isSvg: true, isHomeView: true),
          const SizedBox(
            height: 80.0,
          ),
          const RowUserDetails(
              icon: 'assets/images/UserOutline.svg', text: 'User Name',isEdit: false),
          const CustomDiviver(),
          const RowUserDetails(
              icon: 'assets/images/PhoneOutline.svg', text: '01358424845',isEdit: false),
          const CustomDiviver(),
          const RowUserDetails(
              icon: 'assets/images/MailOutline.svg',
              text: 'User_Name@gmail.com',isEdit: false),
          const CustomDiviver(),
          const SizedBox(
            height: 33.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                    child: CustomButton(
                  text: 'اتصال الأن',
                  onPressed: (){},
                  paddingHorizontal: 3.5,
                  textColor: kPrimaryColor,
                  backgroundColor: Colors.white,
                )),
                Expanded(
                    child: CustomButton(
                  text: 'اضف الي جهة الأتصال',
                  onPressed: (){},
                  paddingHorizontal: 3.5,
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
