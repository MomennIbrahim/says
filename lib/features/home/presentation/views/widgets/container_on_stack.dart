import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';

class ContainerOnStack extends StatelessWidget {
  const ContainerOnStack({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
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
              text,
              style: Styles.style25.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
