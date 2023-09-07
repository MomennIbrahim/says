import 'package:flutter/material.dart';
import 'package:says_app/core/widgets/custom_buttom.dart';
import 'package:says_app/features/home/presentation/views/widgets/row_details.dart';
import '../../../../../core/utils/styles.dart';

class OtherProfileViewBody extends StatelessWidget {
  const OtherProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffFF3D64),
                Color.fromRGBO(255, 61, 100, 0.31),
              ]),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0))),
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Text(
              'الحساب الشخصي',
              style: Styles.style25.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55.0),
                  topRight: Radius.circular(55.0)),
              color: Colors.white,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 13.0, vertical: 43.0),
              child: Column(
                children: [
                  RowUserDetails(
                      icon: 'assets/images/UserOutline.svg',
                      text: 'User Name',
                      iconButton: Icons.edit,
                      function: () {},
                      isEdit: true),
                  const Divider(
                    thickness: 1.5,
                  ),
                  RowUserDetails(
                      icon: 'assets/images/PhoneOutline.svg',
                      text: 'Phone Number',
                      iconButton: Icons.edit,
                      function: () {},
                      isEdit: true),
                  const Divider(
                    thickness: 1.5,
                  ),
                  RowUserDetails(
                      icon: 'assets/images/bx-qr.svg.svg',
                      text: 'Private Qr Code',
                      iconButton: Icons.edit,
                      function: () {},
                      isEdit: true),
                  const Divider(
                    thickness: 1.5,
                  ),
                  const RowUserDetails(
                    icon: 'assets/images/MailOutline.svg',
                    text: 'UserEmail@gmail.com',
                    isEdit: false,
                  ),
                  const Divider(
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 0.0),
                    child: Row(
                      children: [
                        const Text(
                          'حساب خاص',
                          style: Styles.style16,
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.ac_unit,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1.5,
                  ),
                  const SizedBox(
                    height: 19.0,
                  ),
                  CustomButton(
                    text: 'حفظ',
                    paddingHorizontal: 100.0,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
