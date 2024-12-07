import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_work/feature/auth/model/user_model.dart';
import 'package:practice_work/feature/auth/view_model/auth_states.dart';
import 'package:practice_work/services/api_service.dart';

final authControllerProvider = NotifierProvider<AuthController, AuthStates>(
    () => AuthController(apiService: UserApiService()));

class AuthController extends Notifier<AuthStates> {
  static const _otpRequestErrorMessage = 'Otp cannot be sent!';
  static const _otpVerifyErrorMessage = 'Incorrect OTP';
  static const _signUpErrorMessage = 'Something went wrong!';
  static const _loginErrorMessage = 'User not found';
  AuthController({required this.apiService});

  //CONTROLLERS
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final UserApiService apiService;

  UserModel? _user;
  String _otp = '';

  @override
  build() {
    return AuthInitialState();
  }

  requestOtp() async {
    state = OTPSendingState();
    String fullName =
        '${firstNameController.text.trim()} ${lastNameController.text.trim()}';
    _user = UserModel(
        name: fullName,
        email: emailController.text.trim(),
        password: passwordController.text.trim());
    _otp = await apiService.requestOtp(user: _user!);
    if (_otp.isNotEmpty) {
      state = OTPSentState();
      //NAVIGATE TO THE OTP SCREEN
    } else {
      state = AuthErrorState(_otpRequestErrorMessage);
    }
  }

  verifyOtp() async {
    state = OTPVerifyingState();
    if (await apiService.verifyUserOtp(otp: _otp, user: _user!)) {
      state = SignUpLoadingState();
      if (await apiService.createUser(user: _user!)) {
        state = SignUpSuccessfulState();
        //NAVIGATE TO LOGIN SCREEN
      } else {
        state = AuthErrorState(_signUpErrorMessage);
      }
    } else {
      state = AuthErrorState(_otpVerifyErrorMessage);
    }
  }

  login() async {
    state = LoginLoadingState();
    if (await apiService.loginUserWithCredentials(email: _user!.email)) {
      state = LoginSuccessfulState();
    } else {
      state = AuthErrorState(_loginErrorMessage);
    }
  }
}
