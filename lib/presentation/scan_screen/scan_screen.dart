import 'dart:developer';
import 'dart:io';

import 'package:fintap/presentation/scan_success_screen/scan_success_screen.dart';
import 'package:fintap/widgets/bk_btn.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import 'controller/scan_controller.dart';
import 'package:fintap/core/app_export.dart';
import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var getController = Get.put(ScanController());

  Barcode? result;

  QRViewController? controller;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getVerticalSize(60.00),
        leadingWidth: 48,
        leading: BkBtn(
          margin: getMargin(left: 24, top: 12, bottom: 24),
        ),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_scan".tr),
        actions: [
          AppbarImage(
              height: getSize(24.00),
              width: getSize(24.00),
              svgPath: ImageConstant.imgQuestion,
              margin: getMargin(left: 24, top: 12, right: 24, bottom: 24))
        ],
        backgroundColor: ColorConstant.whiteA700,
      ),
      body: Stack(
        children: <Widget>[
          _buildQrView(context),
          if (result != null)
            Text('Data: ${result!.code}')
          else
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                  height: 56,
                  width: size.width,
                  text: "msg_select_from_gallery".tr,
                  variant: ButtonVariant.OutlineWhiteA700,
                  padding: ButtonPadding.PaddingT16,
                  fontStyle: ButtonFontStyle.GeneralSansMedium16WhiteA700,
                  margin: getMargin(left: 24, right: 24, bottom: 20),
                  prefixWidget: Container(
                      margin: getMargin(right: 8),
                      child: CustomImageView(svgPath: ImageConstant.imgMap))),
            )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: ColorConstant.indigo500,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
      Future.delayed(Duration(milliseconds: 100), () {
        Get.to(ScanSuccessScreen(result!));
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
