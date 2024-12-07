import 'dart:convert';
import 'dart:developer';
import 'dart:math' as math;

import 'package:http/http.dart';

import '../feature/auth/model/user_model.dart';

extension on Response {
  bool get postedSuccessFully => statusCode == 201;
}

abstract class AbstractApiService {
  String get baseUrl => 'https://jsonplaceholder.typicode.com';
  String get apiUrl;
  final List<Map<String, String>> _localUsers = [];

  //SIGN UP USER
  signUpUser({required UserModel user}) async {
    final Map<String, String> userData = {
      'name': user.name,
      'email': user.email,
      'password': user.password,
    };

    try {
      final url = Uri.parse(baseUrl + apiUrl);
      final response = await post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(userData),
      );

      if (response.postedSuccessFully) {
        _localUsers.add(userData);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log('Error creating user : ${e.toString()}');
      return false;
    }
  }

  //GET THE USER
  loginUser({String endPoint = '', required String email}) async {
    final url = Uri.parse(baseUrl + apiUrl + endPoint);
    try {
      final response = await get(url);

      final Map<String, String> userData = _localUsers.firstWhere(
        (element) => email == element['email'],
        orElse: () => {},
      );
      if (userData.isNotEmpty) {
        return true;
      } else {
        log('user not found status code  = ${response.statusCode}');
        return false;
      }
    } catch (e) {
      log('No user found : ${e.toString()}');
      return false;
    }
  }

  //REQUEST OTP FROM SERVER
  requestOtpFromServer({required String email}) async {
    final url = Uri.parse(baseUrl + apiUrl);
    log(url.toString());
    try {
      final otp = _generateOTP();
      final response = await post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, otp: otp}),
      );

      if (response.postedSuccessFully) {
        return otp;
      } else {
        log('otp cannot be generated ${response.statusCode}');
        return '';
      }
    } catch (e) {
      log('Cannot request Otp ${e.toString()}');
      return '';
    }
  }

  //VERIFY THE OTP FROM THE SERVER
  verifyOTP({required String otp}) async {
    final url = Uri.parse(baseUrl + apiUrl);

    //OTP DATA
    final Map<String, String> otpData = {
      'otp': otp,
    };

    try {
      final response = await post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(otpData),
      );

      if (response.postedSuccessFully) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log('Cannot verify otp : ${e.toString()}');
      return false;
    }
  }

  //CODE FOR OTP
  _generateOTP() {
    //Otp Code
    final random = math.Random();
    final otp = 1000 + random.nextInt(9000);
    return otp.toString();
  }
}

class UserApiService extends AbstractApiService {
  @override
  String get apiUrl => '/users';

  Future<String> requestOtp({required UserModel user}) async {
    return await requestOtpFromServer(email: user.email);
  }

  Future<bool> verifyUserOtp(
      {required String otp, required UserModel user}) async {
    return await verifyOTP(otp: otp);
  }

  Future<bool> createUser({required UserModel user}) async {
    return signUpUser(user: user);
  }

  loginUserWithCredentials({required String email}) async {
    final endPoint = '?email=$email';
    return await loginUser(endPoint: endPoint, email: email);
  }
}
