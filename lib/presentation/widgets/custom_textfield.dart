import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../application/core/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.label,
    this.controller,
    this.errorMessage,
    this.keyboardType,
    this.obscureText,
    this.textCapitalization,
    this.onTap,
    this.readOnly,
    this.maxLines,
    this.textInputAction,
    this.hint,
    this.autoFocus = false,
    this.inputFormatters,
    this.enabled,
    this.maxLength,
    this.floatingLabelBehavior,
    this.validator,
    this.onChanged,
    this.suffixIcon,
    this.bottomText,
    this.textDirection,
    this.bottomSpace,
    this.autovalidateMode,
  }) : super(key: key);
  final String? label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String value)? validator;
  final bool? obscureText;
  final String? errorMessage;
  final TextCapitalization? textCapitalization;
  final bool? readOnly;
  final Function()? onTap;
  final int? maxLines;
  final bool autoFocus;
  final String? hint;
  final TextInputAction? textInputAction;
  final bool? enabled;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final Function(String value)? onChanged;
  final Widget? suffixIcon;
  final String? bottomText;
  final TextDirection? textDirection;
  final double? bottomSpace;
  final AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomSpace ?? 10),
      child: TextFormField(
        autofocus: autoFocus,
        readOnly: readOnly ?? false,
        enabled: enabled ?? true,
        textInputAction: textInputAction ?? TextInputAction.next,
        textCapitalization: textCapitalization ?? TextCapitalization.words,
        inputFormatters: inputFormatters,
        autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
        textDirection: textDirection,
        onTap: onTap,
        validator: validator != null
            ? (value) {
                if (!validator?.call(value ?? "")) {
                  if (errorMessage == null) {
                    return "Please enter a valid value";
                  } else {
                    return errorMessage;
                  }
                }
                return null;
              }
            : null,
        //  style: CustomTextStyle.getHomeBtnFontStyle(),
        obscureText: obscureText ?? false,
        controller: controller,
        maxLines: maxLines ?? 1,
        maxLength: maxLength, onChanged: onChanged,
        obscuringCharacter: '*',
        keyboardType: keyboardType,

        decoration: InputDecoration(
          filled: true,
          suffixIcon: suffixIcon,
          isDense: true,
          // counter: const SizedBox(),
          fillColor: AppColors.white,
          hintText: hint,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.borderGrey),
          ),
          enabledBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: AppColors.borderGrey)),
          // hintText: hint == null ? label : hint,
          labelText: label,
          floatingLabelBehavior: floatingLabelBehavior,
        ),
      ),
    );
  }
}
