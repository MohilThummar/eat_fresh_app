/// <<< Entire app all type of assets path --------- >>>

class AppAssets {
  static const String iconPath = "assets/icons/";
  static const String imagesPath = "assets/images/";
  static const String svgImagesPath = "assets/svg/";

  // ---- Images ------------ >>>
  static const String welcomeBG = "${imagesPath}welcome_bg.png";

  // ---- SVG Image ------------ >>>
  static const String splashAppLogo = "${svgImagesPath}splash_app_logo.svg";
}

/// Note: HOW TO USE THIS COLORS IN APP ----->>>
/*
    // -- SVG Image -->
    SvgPicture.asset(
        AppAssets.splashAppLogo,
    ),

    // -- Assets Image -->
    Image.asset(
        AppAssets.welcomeBG,
    ),

*/
