import 'dart:convert';

import 'package:flutter_riverpod_mvvm/user.dart';


class UserRepository {
  void getUser() {
    String dummy = """
{
  "name" : "seoyeon",
  "age" : 25
}
""";

  // 1. jsonDecode 함수 사용해서 Map으로 변환
  Map<String, dynamic> map = jsonDecode(dummy);

  // 2. map => 객체로 변환
  return User.fromJson(map);
  }
}
