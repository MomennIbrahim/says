import 'package:flutter/material.dart';
import '../../../../../core/utils/constatnce.dart';
import '../../../../../core/utils/styles.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key, required this.text, required this.isLogin, required this.isDone, required this.onPressed});

  final String text;
  final bool isLogin;
  final bool isDone;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Row(
        children: [
          if(isDone)
            const CircleAvatar(
            radius: 12.0,
            backgroundColor: kPrimaryColor,
            child:  Icon(Icons.done,size: 16.0,color: Colors.white),
          ),
          if(!isDone)
             Container(
               width: 24,
               height: 24,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(28.0),
                 border: Border.all(color: Colors.grey)
               ),
             ),
          const SizedBox(width: 13.0 ,),
          Text(text,style: Styles.style14,),
          const Spacer(),
          if(!isLogin)
            IconButton(onPressed: (){
              onPressed();
            }, icon: const Icon(Icons.arrow_back_ios_new)),
          if(isLogin)
            Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: kPrimaryColor)
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('تسجيل دخول بحساب أخر',style: Styles.style9,),
            ),
          )
        ],
      ),
    );
  }
}
