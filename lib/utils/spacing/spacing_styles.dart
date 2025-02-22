import 'package:flutter/cupertino.dart';
import 'package:horizon_v2/utils/constants/enums.dart';

import '../constants/sizes.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingwithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}