import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'backend/firebase_refs.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder(
        initialData: [],
        stream: walletRef.doc(FirebaseAuth.instance.currentUser.uid).snapshots(),
        builder: (context, AsyncSnapshot snapshot){
          if( snapshot.hasError || snapshot.connectionState == ConnectionState.waiting ){
            return CircularProgressIndicator();
          }else if(!snapshot.data.exists){
            return SizedBox(
              height: Get.height,
              child: Center(
                child: ElevatedButton(
                  onPressed: (){
                    final _key = GlobalKey<FormState>();
                    TextEditingController name = TextEditingController();
                    TextEditingController email = TextEditingController();
                    TextEditingController paypalid = TextEditingController();
showDialog(
  context: context,
  builder: (context){
    return AlertDialog(
      backgroundColor: Colors.black,
      title: Text('Add Paypal Details', style: TextStyle(color: Colors.white)),
      content: Form(
        key: _key,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
                TextFormField(
                  controller: name,
                  style: TextStyle(color: Colors.white),
                  validator: (val){
                    if(val.isEmpty){
                      return '*Required';
                    }
                      return null;
                    },
          decoration: InputDecoration(
                hintText: 'Name'.tr,
                labelText: 'Name'.tr,
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          ),
        ).marginOnly( bottom: 15),
                TextFormField(
                  controller: email,
                  style: TextStyle(color: Colors.white),
                  validator: (val){
                    if(val.isEmpty){
                      return '*Required';
                    }else if(!val.isEmail){
                      return 'Should be a valid email address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Email'.tr,
                    labelText: 'Email'.tr,
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  ),
                ).marginOnly( bottom: 15),
                TextFormField(
                  controller: paypalid,
                  style: TextStyle(color: Colors.white),
                  validator: (val){
                    if(val.isEmpty){
                      return '*Required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Paypal'.tr,
                    labelText: 'Paypal'.tr,
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                  ),
                ).marginOnly( bottom: 15),


          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.clear, color: Colors.white),
        ),
        TextButton(
          onPressed: (){
                Get.focusScope.unfocus;
                _key.currentState.save();
                if(_key.currentState.validate()){
                  walletRef.doc(FirebaseAuth.instance.currentUser.uid).set({
                    'total':0, 'withdraw': 0,
                    'paypal':{
                      'name': name.text,
                      'email': email.text,
                      'paypalid': paypalid.text,
                    }
                  }).then((val){
                    Get.back();
                    Get.snackbar('Success', 'Data added successfully', snackPosition: SnackPosition.BOTTOM, colorText: Colors.white, );
                  });
                }
          },
          child: Text('Submit', style: TextStyle(color: Colors.white,),),
        ),
      ],
    );
  }
)

;
                  },
                  child: Text('Add Paypal Details'),
                ),
              ),
            );

          }else if(snapshot.hasData) {
            return Card(
              elevation: 5.0,
              color: Colors.purpleAccent,
              margin: const EdgeInsets.only(left:15, right: 15, top: 10, bottom: 10),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color:Colors.purpleAccent, width: 2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)
                  )
              ),
              child: Stack(
                children: [
                    SizedBox(width: Get.width, height: 150),
                  Positioned(
                    right: 10,
                    top: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Available Balance',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),),
                        Text(snapshot.data['total'].toString(),),
                      ],
                    ),
                  ),
                 Positioned(
                   bottom: 20,
                   child: Column(
                   children: [
                     Text(snapshot.data['paypal']['name'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),).marginOnly(left: 10, right: 10),
                     Text(snapshot.data['paypal']['paypalid']).marginOnly(top: 10, left: 10, right: 10),
                   ],
                 ),),
                ],
              ),
            );
          }else {
            return Container();
          }
        },
      ),
    );
  }
}
