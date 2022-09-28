import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController? controller,
  Function? onsubmit,
  Function? onchange,
  required TextInputType? type,
  required IconData? prefix,
  IconData? suffix,
  required String label,
  required Function? valid,
  bool? isPassword = false,
  Function? suffixPress,
}) =>
    TextFormField(
      obscureText: isPassword!,
      validator: (value) {
        return valid!(value);
      },
      controller: controller,
      onFieldSubmitted: (value) {
        onsubmit!(value);
      },
      onChanged: (value) {
        onchange!(value);
      },
      keyboardType: type,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
            onPressed: () {
              suffixPress!();
            },
            icon: Icon(suffix))
            : null,
        border: const OutlineInputBorder(),
      ),
    );
Widget defaultButton({
  required double width,
  required Color backGround,
  required Function function,
  required String text,
  bool isUpper = true,
  double radius = 10,
  Builder? builder,
  Color colorText = Colors.black,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: backGround,
        borderRadius: BorderRadius.circular(
          (radius),
        ),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w400,
            color: colorText,
          ),
        ),
      ),
    );