import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:says_app/core/utils/constatnce.dart';
import 'package:says_app/features/layout/presentation/controller/layout_cubit.dart';

class LayoutViewBody extends StatelessWidget {
  const LayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    var layoutCubit = LayoutCubit.get(context);

    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/images/bx-home-circle.svg.svg',
                        color: layoutCubit.currentIndex == 0
                            ? kPrimaryColor
                            : Colors.white),
                    label: 'الصفحة الرئيسية'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/images/bx-qr-scan.svg.svg',
                      color:
                          layoutCubit.currentIndex == 1 ? kPrimaryColor : Colors.white,
                    ),
                    label: 'مسح'),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/images/bxs-cog.svg.svg',
                  color: layoutCubit.currentIndex == 2 ?kPrimaryColor:Colors.white,
                  ),
                  label: 'الأعدادات',
                ),
              ],
              onTap: (index) {
                layoutCubit.changeBottomNav(index);
              },
              currentIndex: layoutCubit.currentIndex,
              elevation: 5.0,
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: kPrimaryColor,
              unselectedItemColor: Colors.white,
            ),
            body: layoutCubit.screens[layoutCubit.currentIndex],
          ),
        );
      },
    );
  }
}
