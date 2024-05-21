import 'dart:ffi';

class AccountStatusModel {
  String myAccount;
  Double availableBalance;
  
  AccountStatusModel({
    required this.myAccount,
    required this.availableBalance
  });
}