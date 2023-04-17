import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  final String title;
  final double? width;
  final IconData? icon;
  final String? image;
  final double? height;
  final double? fontSize;
  final Widget? child;
  final bool? disableButton;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;

  const AppButton({
    super.key,
    required this.title,
    this.width,
    this.icon,
    this.image,
    this.height,
    this.fontSize,
    this.child,
    this.disableButton = false,
    required this.onPressed,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disableButton! ? null : onPressed,
      onLongPress: disableButton! ? null : onLongPress,
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            fixedSize: MaterialStatePropertyAll(Size(width ?? Get.width, height ?? 54)),
          ),
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 24,
                ),
                const SizedBox(width: 5),
              ] else
                const SizedBox(),
              if (image != null && image != "") ...[
                image!.contains(".svg")
                    ? SvgPicture.asset(
                        image!,
                        height: 22,
                        alignment: Alignment.bottomLeft,
                      )
                    : Image.asset(
                        image!,
                        height: 22,
                        color: Colors.white,
                        alignment: Alignment.bottomLeft,
                      ),
                const SizedBox(width: 5)
              ] else
                const SizedBox(),
              if (title != "")
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                )
              else
                const SizedBox(),
            ],
          ),
    );
  }
}
