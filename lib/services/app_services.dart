import 'package:get/get.dart';
import 'package:plots/backend/firebase_refs.dart';
import 'package:plots/controllers/app_controller.dart';
import 'package:plots/models/paypal_model.dart';

class AppServices extends GetxService{
  final AppController appController = Get.put(AppController());

  Future<AppServices> init() async {
    // stripeRef.doc('paypal').set({
    //   'public':"kxstwxnrhj43rgy4", 'private': 'bc01bc8fb6da18d8b7ddebc421e53210',
    //   'merchantid': '25k4h8xrxbzwp857', 'token': 'sandbox_d5mqjnpc_25k4h8xrxbzwp857',
    // });
    await appController.fetchPaypalData();
    return this;
  }



  PaypalModel get paypal => appController.paypal.value;

  String get public => paypal.public;
  String get private => paypal.private;
  String get merchantId => paypal.merchantid;
  String get token => paypal.token;
}