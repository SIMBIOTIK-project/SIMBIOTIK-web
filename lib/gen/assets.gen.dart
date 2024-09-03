/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/file_14592169.png
  AssetGenImage get file14592169 =>
      const AssetGenImage('assets/icons/file_14592169.png');

  /// List of all assets
  List<AssetGenImage> get values => [file14592169];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cash.png
  AssetGenImage get cash => const AssetGenImage('assets/images/cash.png');

  /// File path: assets/images/deposit.png
  AssetGenImage get deposit => const AssetGenImage('assets/images/deposit.png');

  /// File path: assets/images/design_background.png
  AssetGenImage get designBackground =>
      const AssetGenImage('assets/images/design_background.png');

  /// File path: assets/images/simbiotik2.png
  AssetGenImage get simbiotik2 =>
      const AssetGenImage('assets/images/simbiotik2.png');

  /// File path: assets/images/simbiotik3.png
  AssetGenImage get simbiotik3 =>
      const AssetGenImage('assets/images/simbiotik3.png');

  /// File path: assets/images/withdrawal.png
  AssetGenImage get withdrawal =>
      const AssetGenImage('assets/images/withdrawal.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [cash, deposit, designBackground, simbiotik2, simbiotik3, withdrawal];
}

class Assets {
  Assets._();

  static const String aEnv = '.env';
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [aEnv];
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
