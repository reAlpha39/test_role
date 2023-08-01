import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:web_image_downloader/web_image_downloader.dart';

part 'share_state.dart';
part 'share_cubit.freezed.dart';

@injectable
class ShareCubit extends Cubit<ShareState> {
  ShareCubit() : super(const ShareState.initial());

  GlobalKey globalKey = GlobalKey();

  Future<void> downloadImage() async {
    if (kIsWeb) {
      await WebImageDownloader.downloadImage(globalKey, 'result.png');
    }
  }
}
