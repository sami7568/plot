import 'package:get/get.dart';
import 'package:plots/backend/firebase_refs.dart';
import 'package:plots/models/paypal_model.dart';


class AppController extends GetxController{

  final Rx<PaypalModel> paypal = PaypalModel().obs;

  @override
  void onInit() {
    super.onInit()
;  }



  Future fetchPaypalData() async {
    stripeRef.doc('paypal').get().then((value) {
      paypal.value = PaypalModel.fromMap(value.data());
    });
  }
}