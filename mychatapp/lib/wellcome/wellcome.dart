import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mychatapp/components/components.dart';
import 'package:mychatapp/login/login.dart';
import 'package:mychatapp/register/register.dart';

class WellComeView extends StatelessWidget {
  const WellComeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wellcome to Chat App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/thunder.svg'),
                const SizedBox(width: 10),
                const CustomWavyAnimatedText(text: 'Flash Chat')
              ],
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Login',
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const LoginView(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomElevatedButton(
              text: 'Register',
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const RegisterView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
