/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.jpg
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.jpg');

  /// File path: assets/images/fc_logo.png
  AssetGenImage get fcLogo => const AssetGenImage('assets/images/fc_logo.png');

  /// File path: assets/images/forex.jpg
  AssetGenImage get forex => const AssetGenImage('assets/images/forex.jpg');

  /// File path: assets/images/forex_volume.webp
  AssetGenImage get forexVolume =>
      const AssetGenImage('assets/images/forex_volume.webp');

  $AssetsImagesHallOfNamesGen get hallOfNames =>
      const $AssetsImagesHallOfNamesGen();

  /// File path: assets/images/playstore.png
  AssetGenImage get playstore =>
      const AssetGenImage('assets/images/playstore.png');

  /// File path: assets/images/pnglogo.png
  AssetGenImage get pnglogo => const AssetGenImage('assets/images/pnglogo.png');

  /// File path: assets/images/trading_protrait.jpg
  AssetGenImage get tradingProtrait =>
      const AssetGenImage('assets/images/trading_protrait.jpg');

  /// File path: assets/images/transparent_logo.png
  AssetGenImage get transparentLogo =>
      const AssetGenImage('assets/images/transparent_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        background,
        fcLogo,
        forex,
        forexVolume,
        playstore,
        pnglogo,
        tradingProtrait,
        transparentLogo
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/playstore.svg
  SvgGenImage get playstore => const SvgGenImage('assets/svg/playstore.svg');

  /// List of all assets
  List<SvgGenImage> get values => [playstore];
}

class $AssetsImagesHallOfNamesGen {
  const $AssetsImagesHallOfNamesGen();

  /// File path: assets/images/hall_of_names/bill.jpeg
  AssetGenImage get bill =>
      const AssetGenImage('assets/images/hall_of_names/bill.jpeg');

  /// File path: assets/images/hall_of_names/george.jpg
  AssetGenImage get george =>
      const AssetGenImage('assets/images/hall_of_names/george.jpg');

  /// File path: assets/images/hall_of_names/marcus.jpg
  AssetGenImage get marcus =>
      const AssetGenImage('assets/images/hall_of_names/marcus.jpg');

  /// File path: assets/images/hall_of_names/paul.jpg
  AssetGenImage get paul =>
      const AssetGenImage('assets/images/hall_of_names/paul.jpg');

  /// File path: assets/images/hall_of_names/stanley.jpeg
  AssetGenImage get stanley =>
      const AssetGenImage('assets/images/hall_of_names/stanley.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [bill, george, marcus, paul, stanley];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
