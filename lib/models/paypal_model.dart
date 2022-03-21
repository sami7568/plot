class PaypalModel {
  String private, public, merchantid, token;
  PaypalModel({
    this.merchantid,this.private,this.public,this.token,
});
  factory PaypalModel.fromMap(var map){
    return PaypalModel(
      merchantid: map['merchantid'],
      private: map['private'],
      public: map['public'],
      token: map['token'],
    );
  }
}