import 'package:flutter/material.dart';
import 'package:horizon_v2/authentication/login/custom/login_social_buttons.dart';
import 'package:horizon_v2/utils/constants/sizes.dart';
import 'package:horizon_v2/utils/constants/text_strings.dart';
import '../login/custom/login_footer.dart';
import 'custom/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              
              // Form
              TSignupForm(),
              //Divider
              TFormDivider(dividerText: TTexts.signupTitle,),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Social Buttons
              TSocialButtons(),
            ],
          ),
        )
      ),
    );
  }
}