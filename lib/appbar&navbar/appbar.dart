import 'package:flutter/material.dart';
import 'package:horizon_v2/custom_widgets/cart.dart';
import 'package:horizon_v2/custom_widgets/profile.dart';
import 'package:horizon_v2/custom_widgets/custom_search.dart';
import 'package:horizon_v2/utils/constants/sizes.dart';
import 'package:horizon_v2/utils/device/device_utility.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TAppbar({
    super.key,
    this.title,
    this.showBackArrow = true,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.md,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow ? IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Iconsax.arrow_left
            ),
        ) : IconButton(
            onPressed: leadingOnPressed,
            icon: Icon(
              leadingIcon,
            ),
        ),
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
