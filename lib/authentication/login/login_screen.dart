import 'package:flutter/material.dart';
import 'package:horizon_v2/utils/constants/sizes.dart';
import 'package:horizon_v2/utils/constants/text_strings.dart';
import 'package:horizon_v2/utils/helpers/helper_functions.dart';
import 'package:horizon_v2/utils/spacing/spacing_styles.dart';

import 'custom/login_footer.dart';
import 'custom/login_form.dart';
import 'custom/login_header.dart';
import 'custom/login_social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingwithAppBarHeight,
          child: Column(
            children: [
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Logo, Title & Sub-Title
              TLoginHeader(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Form
              TLoginForm(),

              // Divider
              TFormDivider(dividerText: TTexts.orSignInWith,),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Footer
              TSocialButtons(),
              // Divider
            ],
          ),
        ),
      ),
    );
  }
}