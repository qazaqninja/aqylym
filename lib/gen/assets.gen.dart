/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  /// File path: lib/.env
  String get aEnv => 'lib/.env';

  /// List of all assets
  List<String> get values => [aEnv];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app_icons.ttf
  String get appIcons => 'assets/icons/app_icons.ttf';

  /// File path: assets/icons/dev.png
  AssetGenImage get dev => const AssetGenImage('assets/icons/dev.png');

  /// File path: assets/icons/prod.png
  AssetGenImage get prod => const AssetGenImage('assets/icons/prod.png');

  /// File path: assets/icons/stage.png
  AssetGenImage get stage => const AssetGenImage('assets/icons/stage.png');

  /// List of all assets
  List<dynamic> get values => [appIcons, dev, prod, stage];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/1.svg
  String get a1 => 'assets/images/1.svg';

  /// File path: assets/images/book1.svg
  String get book1 => 'assets/images/book1.svg';

  /// File path: assets/images/book2.svg
  String get book2 => 'assets/images/book2.svg';

  /// File path: assets/images/game1.svg
  String get game1 => 'assets/images/game1.svg';

  /// File path: assets/images/game2.svg
  String get game2 => 'assets/images/game2.svg';

  /// File path: assets/images/game3.svg
  String get game3 => 'assets/images/game3.svg';

  /// File path: assets/images/intro1.jpg
  AssetGenImage get intro1 => const AssetGenImage('assets/images/intro1.jpg');

  /// File path: assets/images/intro2.jpg
  AssetGenImage get intro2 => const AssetGenImage('assets/images/intro2.jpg');

  /// File path: assets/images/intro3.jpg
  AssetGenImage get intro3 => const AssetGenImage('assets/images/intro3.jpg');

  /// File path: assets/images/intro4.jpg
  AssetGenImage get intro4 => const AssetGenImage('assets/images/intro4.jpg');

  /// File path: assets/images/star.svg
  String get star => 'assets/images/star.svg';

  /// List of all assets
  List<dynamic> get values => [
        a1,
        book1,
        book2,
        game1,
        game2,
        game3,
        intro1,
        intro2,
        intro3,
        intro4,
        star
      ];
}

class $AssetsSplashGen {
  const $AssetsSplashGen();

  /// File path: assets/splash/dark.png
  AssetGenImage get dark => const AssetGenImage('assets/splash/dark.png');

  /// File path: assets/splash/light.png
  AssetGenImage get light => const AssetGenImage('assets/splash/light.png');

  /// List of all assets
  List<AssetGenImage> get values => [dark, light];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSplashGen splash = $AssetsSplashGen();
  static const $LibGen lib = $LibGen();
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
    bool gaplessPlayback = true,
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
