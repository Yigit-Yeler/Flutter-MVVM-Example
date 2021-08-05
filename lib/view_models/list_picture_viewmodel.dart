import 'package:flutter_mvvm_demo/models/picsum_model.dart';
import 'package:flutter_mvvm_demo/services/services.dart';

class ListPictureViewModel {
  List<PictureVievModel> pictures;

  Future<void> fetchPictures() async {
    final apiResult = await PicSumService().fetchPicturesAPI();
    this.pictures = apiResult.map((e) => PictureVievModel(e)).toList();
  }
}

class PictureVievModel {
  final PicSumModel picSumModel;

  PictureVievModel(this.picSumModel);
}
