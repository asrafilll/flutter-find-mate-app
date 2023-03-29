import 'dart:convert';

import 'package:flutter_saranghae/src/features/authentication/domain/user_account.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataUserAccountLocal {
  static const String userAccountKey = 'userAccountKey';

  static getDataUserAccountFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final result = prefs.getString(userAccountKey) ?? '';
    return jsonDecode(result);
  }

  static void setDataUserAccountToStorage(UserAccount userAccount) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(userAccountKey, jsonEncode(userAccount.toMap()));
  }
}

class UserAccountRegister {
  static const String userAccountRegisterKey = 'userAccountRegisterKey';

  static Future<bool> getUserAccountRegister() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(userAccountRegisterKey) ?? false;
  }

  static void setUserAccountRegisterKey(bool isRegister) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(userAccountRegisterKey, isRegister);
  }
}
