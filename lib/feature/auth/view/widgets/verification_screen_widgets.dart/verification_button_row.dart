import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_work/core/constants/string_constants.dart';
import 'package:practice_work/feature/auth/view_model/auth_controller.dart';

class VerificationButtonRow extends ConsumerWidget {
  const VerificationButtonRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var provider = ref.read(authControllerProvider.notifier);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        VerificationButtons(
          onPressed: () {
            provider.otpResend(context);
          },
          color: lightestGrey,
          text: resend,
          textColor: black,
        ),
        VerificationButtons(
          onPressed: () {
            provider.verifyOtp(context);
          },
          color: lightGreen,
          text: verify,
          textColor: white,
        ),
      ],
    );
  }
}

class VerificationButtons extends StatelessWidget {
  const VerificationButtons(
      {super.key,
      required this.onPressed,
      required this.color,
      required this.text,
      required this.textColor});
  final Color color;
  final String text;

  final VoidCallback? onPressed;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          minimumSize: const WidgetStatePropertyAll(Size(
            200,
            50,
          )),
          shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
          backgroundColor: WidgetStatePropertyAll(color),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ));
  }
}
