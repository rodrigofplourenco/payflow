import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary
            ),
            Positioned(
              top: 30,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: 270,
              )
            ),
            Positioned(
              bottom: size.height * 0.05,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logoMini),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
                    child: Text(
                      "Organize as suas faturas apenas num lugar",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titleHome
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                    child: SocialLoginButton(onTap: () {
                      print("Clicou");
                    },),
                  )
                ],
              ),
            )
          ],
        ),
      ),   
    );
  }
}