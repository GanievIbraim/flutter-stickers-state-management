// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StickerState on _StickerState, Store {
  late final _$categoriesAtom =
      Atom(name: '_StickerState.categories', context: context);

  @override
  List<StickerCategory> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<StickerCategory> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  late final _$stickersAtom =
      Atom(name: '_StickerState.stickers', context: context);

  @override
  List<Sticker> get stickers {
    _$stickersAtom.reportRead();
    return super.stickers;
  }

  @override
  set stickers(List<Sticker> value) {
    _$stickersAtom.reportWrite(value, super.stickers, () {
      super.stickers = value;
    });
  }

  late final _$stickersByCategoryAtom =
      Atom(name: '_StickerState.stickersByCategory', context: context);

  @override
  List<Sticker> get stickersByCategory {
    _$stickersByCategoryAtom.reportRead();
    return super.stickersByCategory;
  }

  @override
  set stickersByCategory(List<Sticker> value) {
    _$stickersByCategoryAtom.reportWrite(value, super.stickersByCategory, () {
      super.stickersByCategory = value;
    });
  }

  late final _$cartAtom = Atom(name: '_StickerState.cart', context: context);

  @override
  List<Sticker> get cart {
    _$cartAtom.reportRead();
    return super.cart;
  }

  @override
  set cart(List<Sticker> value) {
    _$cartAtom.reportWrite(value, super.cart, () {
      super.cart = value;
    });
  }

  late final _$favoriteAtom =
      Atom(name: '_StickerState.favorite', context: context);

  @override
  List<Sticker> get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(List<Sticker> value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  late final _$lightAtom = Atom(name: '_StickerState.light', context: context);

  @override
  bool get light {
    _$lightAtom.reportRead();
    return super.light;
  }

  @override
  set light(bool value) {
    _$lightAtom.reportWrite(value, super.light, () {
      super.light = value;
    });
  }

  late final _$onCategoryTapAsyncAction =
      AsyncAction('_StickerState.onCategoryTap', context: context);

  @override
  Future<void> onCategoryTap(StickerCategory category) {
    return _$onCategoryTapAsyncAction.run(() => super.onCategoryTap(category));
  }

  late final _$onIncreaseQuantityTapAsyncAction =
      AsyncAction('_StickerState.onIncreaseQuantityTap', context: context);

  @override
  Future<void> onIncreaseQuantityTap(Sticker sticker) {
    return _$onIncreaseQuantityTapAsyncAction
        .run(() => super.onIncreaseQuantityTap(sticker));
  }

  late final _$onDecreaseQuantityTapAsyncAction =
      AsyncAction('_StickerState.onDecreaseQuantityTap', context: context);

  @override
  Future<void> onDecreaseQuantityTap(Sticker sticker) {
    return _$onDecreaseQuantityTapAsyncAction
        .run(() => super.onDecreaseQuantityTap(sticker));
  }

  late final _$onAddToCartTapAsyncAction =
      AsyncAction('_StickerState.onAddToCartTap', context: context);

  @override
  Future<void> onAddToCartTap(Sticker sticker) {
    return _$onAddToCartTapAsyncAction.run(() => super.onAddToCartTap(sticker));
  }

  late final _$onRemoveFromCartTapAsyncAction =
      AsyncAction('_StickerState.onRemoveFromCartTap', context: context);

  @override
  Future<void> onRemoveFromCartTap(Sticker sticker) {
    return _$onRemoveFromCartTapAsyncAction
        .run(() => super.onRemoveFromCartTap(sticker));
  }

  late final _$onCheckOutTapAsyncAction =
      AsyncAction('_StickerState.onCheckOutTap', context: context);

  @override
  Future<void> onCheckOutTap() {
    return _$onCheckOutTapAsyncAction.run(() => super.onCheckOutTap());
  }

  late final _$onAddRemoveFavoriteTapAsyncAction =
      AsyncAction('_StickerState.onAddRemoveFavoriteTap', context: context);

  @override
  Future<void> onAddRemoveFavoriteTap(Sticker sticker) {
    return _$onAddRemoveFavoriteTapAsyncAction
        .run(() => super.onAddRemoveFavoriteTap(sticker));
  }

  late final _$_StickerStateActionController =
      ActionController(name: '_StickerState', context: context);

  @override
  void toggleTheme() {
    final _$actionInfo = _$_StickerStateActionController.startAction(
        name: '_StickerState.toggleTheme');
    try {
      return super.toggleTheme();
    } finally {
      _$_StickerStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
categories: ${categories},
stickers: ${stickers},
stickersByCategory: ${stickersByCategory},
cart: ${cart},
favorite: ${favorite},
light: ${light}
    ''';
  }
}
