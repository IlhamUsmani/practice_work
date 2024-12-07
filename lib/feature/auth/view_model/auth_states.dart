sealed class AuthStates {}

final class AuthInitialState extends AuthStates {}

final class OTPSendingState extends AuthStates {}

final class OTPSentState extends AuthStates {}

final class OTPVerifyingState extends AuthStates {}

final class SignUpLoadingState extends AuthStates {}

final class SignUpSuccessfulState extends AuthStates {}

final class LoginLoadingState extends AuthStates {}

final class LoginSuccessfulState extends AuthStates {}

final class AuthErrorState extends AuthStates {
  final String message;
  AuthErrorState(this.message);
}
