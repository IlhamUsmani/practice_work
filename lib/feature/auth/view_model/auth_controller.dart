import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_work/feature/auth/model/user_model.dart';
import 'package:practice_work/feature/auth/view/signin_screen.dart';
import 'package:practice_work/feature/auth/view/verification_screen.dart';
import 'package:practice_work/feature/auth/view_model/auth_states.dart';
import 'package:practice_work/home_screen.dart';
import 'package:practice_work/services/api_service.dart';

final authControllerProvider = NotifierProvider<AuthController, AuthStates>(
    () => AuthController(apiService: UserApiService()));

class AuthController extends Notifier<AuthStates> {
  static const _otpRequestErrorMessage = 'Otp cannot be sent!';
  static const _otpVerifyErrorMessage = 'Incorrect OTP';
  static const _signUpErrorMessage = 'Something went wrong!';
  static const _loginErrorMessage = 'User not found';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
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

  void _submitForm(context) {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Form is valid')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please fill in all fields')));
    }
  }

  requestOtp(context) async {
    _submitForm(context);
    if (formKey.currentState!.validate()) {
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
        Navigator.pushNamed(context, VerificationScreen.pageName);
      } else {
        state = AuthErrorState(_otpRequestErrorMessage);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Otp Request Failed'),
          ),
        );
      }
    }
  }

  verifyOtp(context) async {
    state = OTPVerifyingState();
    if (await apiService.verifyUserOtp(otp: _otp, user: _user!)) {
      state = SignUpLoadingState();
      if (await apiService.createUser(user: _user!)) {
        state = SignUpSuccessfulState();
        //NAVIGATE TO LOGIN SCREEN
        Navigator.pushNamed(context, SigninScreen.pageName);
      } else {
        state = AuthErrorState(_signUpErrorMessage);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Otp Verification Failed'),
          ),
        );
      }
    } else {
      state = AuthErrorState(_otpVerifyErrorMessage);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Otp Verification Failed'),
        ),
      );
    }
  }

  otpResend(context) async {
    state = OTPSendingState();
    String fullName =
        '${firstNameController.text.trim()} ${lastNameController.text.trim()}';
    _user = UserModel(
      name: fullName,
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );

    // Request a new OTP
    _otp = await apiService.requestOtp(user: _user!);

    if (_otp.isNotEmpty) {
      state = OTPSentState();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('OTP Resent Successfully'),
        ),
      );
    } else {
      state = AuthErrorState(_otpRequestErrorMessage);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Otp Resend Failed'),
        ),
      );
    }
  }

  login(context) async {
    String text = '';
    state = LoginLoadingState();

    if (text != 'User not found' && _user != null) {
      if (await apiService.loginUserWithCredentials(email: _user!.email)) {
        state = LoginSuccessfulState();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(milliseconds: 200),
            content: Text('Login Successful'),
          ),
        );
        Navigator.pushNamed(context, HomeScreen.pageName);
      } else {
        text = 'User not found';
        state = AuthErrorState(_loginErrorMessage);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('User not found'),
          ),
        );
        await apiService.loginUserWithCredentials(email: '');
      }
    } else {
      text = 'User not found';
      state = AuthErrorState(_loginErrorMessage);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('User not found'),
        ),
      );
      await apiService.loginUserWithCredentials(email: '');
    }
  }
}
