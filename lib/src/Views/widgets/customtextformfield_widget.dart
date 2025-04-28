import 'package:flutter/material.dart';

class CustomTextformfieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? hinttext;
  final double vertical;
  final double horizontal;
  final Function()? onPressed;
  const CustomTextformfieldWidget(
      {super.key,
      required this.textEditingController,
      this.autovalidateMode,
      this.validator,
      this.hinttext,
      required this.vertical,
      required this.horizontal,
      this.prefixIcon,
      this.suffixIcon,
      this.keyboardType,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return TextFormField(
      keyboardType: keyboardType,
      controller: textEditingController,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 20),
      autovalidateMode: autovalidateMode,
      validator: validator,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        hintText: hinttext,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Colors.white),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: theme.scaffoldBackgroundColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: theme.splashColor, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: theme.splashColor,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: theme.splashColor, width: 2.0)),
      ),
      onTap: onPressed,
    );
  }
}
