import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:says_app/core/utils/styles.dart';

class RowUserDetails extends StatelessWidget {
  const RowUserDetails({super.key, required this.icon, required this.text, this.function, this.iconButton, required this.isEdit});

  final String icon;
  final String text;
  final bool isEdit;
  final Function? function;
  final IconData? iconButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27.0,vertical: 6.0),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          const SizedBox(width: 15.0,),
          Expanded(child: Text(text,style: Styles.style16,)),
          if(isEdit)
            IconButton(onPressed: (){function!();}, icon: Icon(iconButton!,color: Colors.grey,)),
        ],
      ),
    );
  }
}
