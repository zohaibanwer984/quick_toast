import 'package:flutter/material.dart';

/// Represents the visual and semantic type of a toast notification.
///
/// Each variant defines its associated background and text colors, ensuring
/// consistency in appearance across different types of toasts.
///
/// **Variants:**
/// - [success]: Indicates a successful operation.
///   - Background Color: Green
///   - Text Color: White
///   - Icon: Check
/// - [error]: Indicates an error or failure.
///   - Background Color: Red
///   - Text Color: White
///   - Icon: Cross
/// - [info]: Provides informational messages.
///   - Background Color: Blue
///   - Text Color: White
///   - Icon: Info
/// - [waring]: Provides warning messages.
///   - Background Color: Orange
///   - Text Color: White
///   - Icon: Warning
///
/// **Usage:**
/// ```dart
/// final variant = ToastVariant.success;
/// print(variant.backgroundColor); // Outputs green color
/// ```
enum ToastVariant {
  /// Represents a successful operation.
  success(
    backgroundColor: Colors.green,
    textColor: Colors.white,
    iconData: Icons.check_circle_outline,
  ),

  /// Represents an error or failure.
  error(
    backgroundColor: Colors.red,
    textColor: Colors.white,
    iconData: Icons.cancel_outlined,
  ),

  /// Represents informational messages.
  info(
    backgroundColor: Colors.blue,
    textColor: Colors.white,
    iconData: Icons.info_outline,
  ),

  /// Represents waring messages.
  warning(
    backgroundColor: Colors.orange,
    textColor: Colors.white,
    iconData: Icons.warning_amber_outlined,
  );

  /// The background color associated with this variant.
  final Color backgroundColor;

  /// The text color associated with this variant.
  final Color textColor;

  /// The IconData assoicated with this variant.
  final IconData iconData;

  /// Creates a [ToastVariant] with the specified colors.
  ///
  /// - [backgroundColor]: The color used for the toast background.
  /// - [textColor]: The color used for the text in the toast.
  /// - [iconData]: The icon used for the text in the toast.
  const ToastVariant({
    required this.backgroundColor,
    required this.textColor,
    required this.iconData,
  });
}
