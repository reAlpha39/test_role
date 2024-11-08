import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_downloader_web/image_downloader_web.dart';
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

part 'share_state.dart';
part 'share_cubit.freezed.dart';

@injectable
class ShareCubit extends Cubit<ShareState> {
  ShareCubit() : super(const ShareState.initial());

  GlobalKey globalKey = GlobalKey();

  Future<void> downloadImage() async {
    final pngBytes = await _getPngBytes();

    await WebImageDownloader.downloadImageFromUInt8List(
      uInt8List: pngBytes,
      name: 'result',
      imageQuality: .8,
    );
  }

  Future<void> shareImage() async {
    final pngBytes = await _getPngBytes();

    Share.shareXFiles([
      XFile.fromData(
        pngBytes,
        mimeType: 'image/png',
      ),
    ], fileNameOverrides: [
      'result.png'
    ]);
  }

  Future<Uint8List> _getPngBytes() async {
    var boundary =
        globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    final ui.Image image = await boundary.toImage(pixelRatio: 4.0);
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    final pngBytes = byteData!.buffer.asUint8List();
    return pngBytes;
  }
}
