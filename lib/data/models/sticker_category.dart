import 'package:mobx/mobx.dart';

import '_models.dart';

part 'sticker_category.g.dart';

// ignore: library_private_types_in_public_api
class StickerCategory = _StickerCategory with _$StickerCategory;

abstract class _StickerCategory with Store {
  final StickerType type;
  @observable
  bool isSelected;

  _StickerCategory({required this.type, required this.isSelected});
}
