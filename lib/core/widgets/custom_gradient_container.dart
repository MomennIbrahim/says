import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/styles.dart';

class CustomGradientContainer extends StatelessWidget {
  const CustomGradientContainer(
      {super.key, required this.image, required this.isSvg, required this.isHomeView});

  final String image;
  final bool isSvg;
  final bool isHomeView;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      width: double.maxFinite,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffFF3D64),
            Color.fromRGBO(255, 61, 100, 0.31),
          ]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0))),
      child: isHomeView? Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Text(
              'User Name',
              style: Styles.style30.copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            child: FittedBox(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 35.0,
                  height: 15.0,
                  child: SvgPicture.asset('assets/images/qr.svg')),
            ),
          )
        ],
      ) :FittedBox(
        alignment: Alignment.center,
        child:
            isSvg ? SizedBox(width:35.0,height: 15.0,child: SvgPicture.asset(image)) : Image(image: AssetImage(image)),
      ),
    );
  }
}
