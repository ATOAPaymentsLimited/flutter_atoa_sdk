import 'dart:io';

import 'package:atoa_sdk/src/shared_widgets/shared_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    this.url,
    this.size,
    this.placeholder,
    this.userName,
    this.textStyle,
    this.imageFile,
    this.isGroup = false,
  });
  final String? url;
  final double? size;
  final Widget? placeholder;
  final String? userName;
  final TextStyle? textStyle;
  final File? imageFile;
  final bool isGroup;

  @override
  Widget build(BuildContext context) {
    if (imageFile != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(size ?? 100.sp),
        child: Image.file(
          imageFile!,
          height: size ?? 100.sp,
          width: size ?? 100.sp,
          fit: BoxFit.cover,
        ),
      );
    }

    final defaultAvatar = DefaultAvatar(
      size: size ?? 100.sp,
      userName: userName ?? '',
      textStyle: textStyle,
      isGroup: isGroup,
    );

    if (url == null) {
      return placeholder ?? defaultAvatar;
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(size ?? 100.sp),
      child: CachedNetworkImage(
        imageUrl: url!,
        height: size ?? 100.sp,
        width: size ?? 100.sp,
        fit: BoxFit.cover,
        placeholder: (_, __) => placeholder ?? defaultAvatar,
        errorWidget: (_, __, dynamic ___) => placeholder ?? defaultAvatar,
      ),
    );
  }
}
