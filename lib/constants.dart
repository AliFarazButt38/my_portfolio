import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFF2C3333);
const Color kSecondaryColor = Color(0xFF395B64);
const Color kContrastColor = Color(0xFFE7F6F2);
const Color kContrastColorWithDecreasedOpacity = Color(0xAAE7F6F2);

const BorderRadius kShowcaseImageBorderRadius = BorderRadius.all(
  Radius.circular(30.0),
);

const InputDecoration kContactFormTextFieldInputDecoration = InputDecoration(
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 0.5,
      color: kContrastColor,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 0.5,
      color: kContrastColor,
    ),
  ),
  labelText: 'Message',
  labelStyle: TextStyle(
    color: kContrastColorWithDecreasedOpacity,
  ),
);
