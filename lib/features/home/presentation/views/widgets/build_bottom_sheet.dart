import 'package:flutter/material.dart';
import '../../../../../core/utils/constatnce.dart';
import '../../../../../core/utils/styles.dart';

class BuildBottomSheet extends StatelessWidget {
  const BuildBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 47.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16.0,
              ),
              Text(
                'الأماكن المتاحة لدينا',
                style: Styles.style18.copyWith(color: kPrimaryColor),
              ),
              Text(
                'من فضلك اختار أقرب مكان',
                style: Styles.style14.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 15.0,),
              Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                      itemBuilder: (context,index)=> buildListViewItem(),
                      separatorBuilder: (context,index)=>const Divider(thickness: 1.5,),
                      itemCount: 8 ,
                  ))
            ],
          ),
        ),
      ),
    );
  }
  buildListViewItem(){
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28.0),
              border: Border.all(color: Colors.grey)
          ),
        ),
        const SizedBox(width: 7.0,),
        Text('التجمع الخامس',style: Styles.style14.copyWith(color: kPrimaryColor),),
      ],
    );
  }
}
