import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:says_app/core/utils/constatnce.dart';
import 'package:says_app/core/utils/styles.dart';
import 'package:says_app/core/widgets/custom_buttom.dart';
import 'package:says_app/core/widgets/custom_gradient_container.dart';

class InitialViewBody extends StatefulWidget {
   const InitialViewBody({super.key});

  @override
  State<InitialViewBody> createState() => _InitialViewBodyState();
}

class _InitialViewBodyState extends State<InitialViewBody> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomGradientContainer(
                image: 'assets/images/QR Code-pana.png',
                isSvg: false,
                isHomeView: false),
            const SizedBox(
              height: 22.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.5),
              child: Expanded(
                child: Text(
                  'من فضلك امسح الكودالخاص بك',
                  textAlign: TextAlign.center,
                  style: Styles.style30,
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            CustomButton(text: 'امسح الأن', onPressed: () {
              scanQr();
            }),
            const SizedBox(
              height: 5.0,
            ),
            CustomButton(
              onPressed: () {},
              text: 'شراء الرمز',
              backgroundColor: Colors.white,
              textColor: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }

  Future scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode(
        '#FF3D64',
        'Cancel',
        true,
        ScanMode.QR,
      ).then((value) {
         print('Value is:$value');
      });
    } catch (e) {
      setState(() {
        'Unable to read this QR code';
      });
    }
  }
}
