// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:ui/ui.dart' as ui;

import '../../embedder.dart';
import '../../fonts.dart';
import '../../html_image_codec.dart';
import '../../renderer.dart';

class SkwasmRenderer implements Renderer {
  @override
  ui.Path combinePaths(ui.PathOperation op, ui.Path path1, ui.Path path2) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.ImageFilter composeImageFilters({required ui.ImageFilter outer, required ui.ImageFilter inner}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Path copyPath(ui.Path src) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.ImageFilter createBlurImageFilter({double sigmaX = 0.0, double sigmaY = 0.0, ui.TileMode tileMode = ui.TileMode.clamp}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Canvas createCanvas(ui.PictureRecorder recorder, [ui.Rect? cullRect]) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Gradient createConicalGradient(ui.Offset focal, double focalRadius, ui.Offset center, double radius, List<ui.Color> colors, [List<double>? colorStops, ui.TileMode tileMode = ui.TileMode.clamp, Float32List? matrix]) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.ImageFilter createDilateImageFilter({double radiusX = 0.0, double radiusY = 0.0}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.ImageFilter createErodeImageFilter({double radiusX = 0.0, double radiusY = 0.0}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.ImageShader createImageShader(ui.Image image, ui.TileMode tmx, ui.TileMode tmy, Float64List matrix4, ui.FilterQuality? filterQuality) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Gradient createLinearGradient(ui.Offset from, ui.Offset to, List<ui.Color> colors, [List<double>? colorStops, ui.TileMode tileMode = ui.TileMode.clamp, Float32List? matrix4]) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.ImageFilter createMatrixImageFilter(Float64List matrix4, {ui.FilterQuality filterQuality = ui.FilterQuality.low}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Paint createPaint() {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.ParagraphBuilder createParagraphBuilder(ui.ParagraphStyle style) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.ParagraphStyle createParagraphStyle({ui.TextAlign? textAlign, ui.TextDirection? textDirection, int? maxLines, String? fontFamily, double? fontSize, double? height, ui.TextHeightBehavior? textHeightBehavior, ui.FontWeight? fontWeight, ui.FontStyle? fontStyle, ui.StrutStyle? strutStyle, String? ellipsis, ui.Locale? locale}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Path createPath() {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.PictureRecorder createPictureRecorder() {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Gradient createRadialGradient(ui.Offset center, double radius, List<ui.Color> colors, [List<double>? colorStops, ui.TileMode tileMode = ui.TileMode.clamp, Float32List? matrix4]) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.SceneBuilder createSceneBuilder() {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.StrutStyle createStrutStyle({String? fontFamily, List<String>? fontFamilyFallback, double? fontSize, double? height, ui.TextLeadingDistribution? leadingDistribution, double? leading, ui.FontWeight? fontWeight, ui.FontStyle? fontStyle, bool? forceStrutHeight}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Gradient createSweepGradient(ui.Offset center, List<ui.Color> colors, [List<double>? colorStops, ui.TileMode tileMode = ui.TileMode.clamp, double startAngle = 0.0, double endAngle = math.pi * 2, Float32List? matrix4]) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.TextStyle createTextStyle({ui.Color? color, ui.TextDecoration? decoration, ui.Color? decorationColor, ui.TextDecorationStyle? decorationStyle, double? decorationThickness, ui.FontWeight? fontWeight, ui.FontStyle? fontStyle, ui.TextBaseline? textBaseline, String? fontFamily, List<String>? fontFamilyFallback, double? fontSize, double? letterSpacing, double? wordSpacing, double? height, ui.TextLeadingDistribution? leadingDistribution, ui.Locale? locale, ui.Paint? background, ui.Paint? foreground, List<ui.Shadow>? shadows, List<ui.FontFeature>? fontFeatures, List<ui.FontVariation>? fontVariations}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Vertices createVertices(ui.VertexMode mode, List<ui.Offset> positions, {List<ui.Offset>? textureCoordinates, List<ui.Color>? colors, List<int>? indices}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  ui.Vertices createVerticesRaw(ui.VertexMode mode, Float32List positions, {Float32List? textureCoordinates, Int32List? colors, Uint16List? indices}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  void decodeImageFromPixels(Uint8List pixels, int width, int height, ui.PixelFormat format, ui.ImageDecoderCallback callback, {int? rowBytes, int? targetWidth, int? targetHeight, bool allowUpscaling = true}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  FontCollection get fontCollection => throw UnimplementedError('Skwasm not implemented on this platform.');

  @override
  FutureOr<void> initialize() {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  Future<ui.Codec> instantiateImageCodec(Uint8List list, {int? targetWidth, int? targetHeight, bool allowUpscaling = true}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  Future<ui.Codec> instantiateImageCodecFromUrl(Uri uri, {WebOnlyImageCodecChunkCallback? chunkCallback}) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  void renderScene(ui.Scene scene) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }

  @override
  String get rendererTag => throw UnimplementedError('Skwasm not implemented on this platform.');

  @override
  void reset(FlutterViewEmbedder embedder) {
    throw UnimplementedError('Skwasm not implemented on this platform.');
  }
}
