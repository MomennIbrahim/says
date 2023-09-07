import 'package:flutter/material.dart';
import 'package:says_app/features/settings/presentation/views/widgets/custom_body.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_buttom.dart';
import '../../../../home/presentation/views/widgets/container_on_stack.dart';

class AccountInfoViewBody extends StatelessWidget {
  const AccountInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            const ContainerOnStack(text: 'معلومات عن الحساب'),
            CustomBody(body:  Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 43.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36.0),
                    child: Text('البريد الألكتروني',style: Styles.style12,),
                  ),
                  const SizedBox(height: 5.0,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36.0),
                    child: Text('MyProfile@gmail.com',style: Styles.style12,),
                  ),
                  const Divider(thickness: 1.5,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36.0),
                    child: Text('الأسم الأول',style: Styles.style12,),
                  ),
                  const SizedBox(height: 5.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36.0),
                    child: Text('My Name',style: Styles.style12.copyWith(color: Colors.black),),
                  ),
                  const Divider(thickness: 1.5,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36.0),
                    child: Text('الأسم الثاني',style: Styles.style12,),
                  ),
                  const SizedBox(height: 5.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36.0),
                    child: Text('My Family Name',style: Styles.style12.copyWith(color: Colors.black),),
                  ),
                  const Divider(thickness: 1.5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 36.0),
                        child: Text('تاريخ الميلاد  (اختياري)',style: Styles.style12,),
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_month,color: Colors.grey,))
                    ],
                  ),
                  const Divider(thickness: 1.5,),
                  const SizedBox(height: 16.0,),
                  CustomButton(text: 'حفظ',onPressed: (){}, paddingHorizontal: 25.0),
                ],
              ),
            )),

          ],
        ),
      ),
    );
  }
}
