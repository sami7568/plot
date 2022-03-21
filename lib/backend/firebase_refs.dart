import 'package:cloud_firestore/cloud_firestore.dart';

final stripeRef = FirebaseFirestore.instance.collection('stripe');

final plotsRef = FirebaseFirestore.instance.collection('plots');

final walletRef = FirebaseFirestore.instance.collection('wallet');