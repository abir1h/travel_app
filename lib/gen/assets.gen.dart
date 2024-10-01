/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/png
  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/Onboarding.png
  AssetGenImage get onboarding =>
      const AssetGenImage('assets/images/png/Onboarding.png');

  /// File path: assets/images/png/b1.png
  AssetGenImage get b1 => const AssetGenImage('assets/images/png/b1.png');

  /// File path: assets/images/png/bck.png
  AssetGenImage get bck => const AssetGenImage('assets/images/png/bck.png');

  /// File path: assets/images/png/beach.png
  AssetGenImage get beach => const AssetGenImage('assets/images/png/beach.png');

  /// File path: assets/images/png/beach2.png
  AssetGenImage get beach2 =>
      const AssetGenImage('assets/images/png/beach2.png');

  /// File path: assets/images/png/bg1.jpg
  AssetGenImage get bg1 => const AssetGenImage('assets/images/png/bg1.jpg');

  /// File path: assets/images/png/brd1.jpg
  AssetGenImage get brd1 => const AssetGenImage('assets/images/png/brd1.jpg');

  /// File path: assets/images/png/brd2.png
  AssetGenImage get brd2 => const AssetGenImage('assets/images/png/brd2.png');

  /// File path: assets/images/png/brd3.png
  AssetGenImage get brd3 => const AssetGenImage('assets/images/png/brd3.png');

  /// File path: assets/images/png/climb.png
  AssetGenImage get climb => const AssetGenImage('assets/images/png/climb.png');

  /// File path: assets/images/png/des.png
  AssetGenImage get des => const AssetGenImage('assets/images/png/des.png');

  /// File path: assets/images/png/flight.png
  AssetGenImage get flight =>
      const AssetGenImage('assets/images/png/flight.png');

  /// File path: assets/images/png/getstarted.png
  AssetGenImage get getstarted =>
      const AssetGenImage('assets/images/png/getstarted.png');

  /// File path: assets/images/png/onb1.png
  AssetGenImage get onb1 => const AssetGenImage('assets/images/png/onb1.png');

  /// File path: assets/images/png/onbaord1.png
  AssetGenImage get onbaord1 =>
      const AssetGenImage('assets/images/png/onbaord1.png');

  /// File path: assets/images/png/test.png
  AssetGenImage get test => const AssetGenImage('assets/images/png/test.png');

  /// File path: assets/images/png/tra2.jpg
  AssetGenImage get tra2 => const AssetGenImage('assets/images/png/tra2.jpg');

  /// File path: assets/images/png/travel.png
  AssetGenImage get travel =>
      const AssetGenImage('assets/images/png/travel.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        onboarding,
        b1,
        bck,
        beach,
        beach2,
        bg1,
        brd1,
        brd2,
        brd3,
        climb,
        des,
        flight,
        getstarted,
        onb1,
        onbaord1,
        test,
        tra2,
        travel
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

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
