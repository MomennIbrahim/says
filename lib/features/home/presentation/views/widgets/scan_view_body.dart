import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:says_app/core/utils/styles.dart';
import 'package:says_app/core/widgets/custom_buttom.dart';

class ScanViewBody extends StatefulWidget {
  const ScanViewBody({super.key});

  @override
  State<ScanViewBody> createState() => _ScanViewBodyState();
}

class _ScanViewBodyState extends State<ScanViewBody> {
  String qrStr = 'Let\'s scan it';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50.0,
          ),
          const Center(child: Text('Scanning QR Code')),
          const SizedBox(
            height: 100,
          ),
          Text(
            qrStr,
            style: Styles.style30,
          ),
          CustomButton(
            text: 'Scanner',
            onPressed: () {
              scanQr();
            },
          )
        ],
      ),
    );
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode(
        '#2A99CF',
        'Cancel',
        true,
        ScanMode.QR,
      ).then((value) {
        qrStr = value;
      });
    } catch (e) {
      setState(() {
        qrStr = 'Unable to read this QR code';
      });
    }
  }
}
