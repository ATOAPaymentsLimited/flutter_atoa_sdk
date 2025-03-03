/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:lottie/lottie.dart' as _lottie;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsGifsGen {
  const $AssetsGifsGen();

  /// File path: assets/gifs/dot-loading.json
  LottieGenImage get dotLoading =>
      const LottieGenImage('assets/gifs/dot-loading.json');

  /// File path: assets/gifs/processing.json
  LottieGenImage get processing =>
      const LottieGenImage('assets/gifs/processing.json');

  /// File path: assets/gifs/tick_mark.json
  LottieGenImage get tickMark =>
      const LottieGenImage('assets/gifs/tick_mark.json');

  /// List of all assets
  List<LottieGenImage> get values => [dotLoading, processing, tickMark];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Icon_refund.svg
  SvgGenImage get iconRefund =>
      const SvgGenImage('assets/icons/Icon_refund.svg');

  /// File path: assets/icons/atoa-logo.svg
  SvgGenImage get atoaLogo => const SvgGenImage('assets/icons/atoa-logo.svg');

  /// File path: assets/icons/bill.svg
  SvgGenImage get bill => const SvgGenImage('assets/icons/bill.svg');

  /// File path: assets/icons/business_img.svg
  SvgGenImage get businessImg =>
      const SvgGenImage('assets/icons/business_img.svg');

  /// File path: assets/icons/close.svg
  SvgGenImage get close => const SvgGenImage('assets/icons/close.svg');

  /// File path: assets/icons/copy.svg
  SvgGenImage get copy => const SvgGenImage('assets/icons/copy.svg');

  /// File path: assets/icons/external_link.svg
  SvgGenImage get externalLink =>
      const SvgGenImage('assets/icons/external_link.svg');

  /// File path: assets/icons/help.svg
  SvgGenImage get help => const SvgGenImage('assets/icons/help.svg');

  /// File path: assets/icons/icon_back.svg
  SvgGenImage get iconBack => const SvgGenImage('assets/icons/icon_back.svg');

  /// File path: assets/icons/icon_block.svg
  SvgGenImage get iconBlock => const SvgGenImage('assets/icons/icon_block.svg');

  /// File path: assets/icons/icon_error.svg
  SvgGenImage get iconError => const SvgGenImage('assets/icons/icon_error.svg');

  /// File path: assets/icons/icon_exclamation.svg
  SvgGenImage get iconExclamation =>
      const SvgGenImage('assets/icons/icon_exclamation.svg');

  /// File path: assets/icons/icon_hourglass_empty.svg
  SvgGenImage get iconHourglassEmpty =>
      const SvgGenImage('assets/icons/icon_hourglass_empty.svg');

  /// File path: assets/icons/icon_refunded.svg
  SvgGenImage get iconRefunded =>
      const SvgGenImage('assets/icons/icon_refunded.svg');

  /// File path: assets/icons/icon_tick.svg
  SvgGenImage get iconTick => const SvgGenImage('assets/icons/icon_tick.svg');

  /// File path: assets/icons/info.svg
  SvgGenImage get info => const SvgGenImage('assets/icons/info.svg');

  /// File path: assets/icons/location_on.svg
  SvgGenImage get locationOn =>
      const SvgGenImage('assets/icons/location_on.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/shield.svg
  SvgGenImage get shield => const SvgGenImage('assets/icons/shield.svg');

  /// File path: assets/icons/warning.svg
  SvgGenImage get warning => const SvgGenImage('assets/icons/warning.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        iconRefund,
        atoaLogo,
        bill,
        businessImg,
        close,
        copy,
        externalLink,
        help,
        iconBack,
        iconBlock,
        iconError,
        iconExclamation,
        iconHourglassEmpty,
        iconRefunded,
        iconTick,
        info,
        locationOn,
        search,
        shield,
        warning
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bank-logos.png
  AssetGenImage get bankLogos =>
      const AssetGenImage('assets/images/bank-logos.png');

  /// File path: assets/images/red-back-atoa-logo.png
  AssetGenImage get redBackAtoaLogo =>
      const AssetGenImage('assets/images/red-back-atoa-logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [bankLogos, redBackAtoaLogo];
}

class Assets {
  const Assets._();

  static const String package = 'atoa_flutter_sdk';

  static const $AssetsGifsGen gifs = $AssetsGifsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  static const String package = 'atoa_flutter_sdk';

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/atoa_flutter_sdk/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  static const String package = 'atoa_flutter_sdk';

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/atoa_flutter_sdk/$_assetName';
}

class LottieGenImage {
  const LottieGenImage(
    this._assetName, {
    this.flavors = const {},
  });

  final String _assetName;
  final Set<String> flavors;

  static const String package = 'atoa_flutter_sdk';

  _lottie.LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    _lottie.FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    _lottie.LottieDelegates? delegates,
    _lottie.LottieOptions? options,
    void Function(_lottie.LottieComposition)? onLoaded,
    _lottie.LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(
      BuildContext,
      Widget,
      _lottie.LottieComposition?,
    )? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return _lottie.Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/atoa_flutter_sdk/$_assetName';
}
