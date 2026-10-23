import 'package:equatable/equatable.dart';

import '../data/_data.dart';

class StickerState extends Equatable {
  //Переменные
  final List<StickerCategory> categories;
  final List<Sticker> stickers;
  final List<Sticker> stickersByCategory;
  final List<Sticker> cart;
  final List<Sticker> favorite;
  final bool light;

  StickerState({
    List<StickerCategory>? categories,
    List<Sticker>? stickers,
    List<Sticker>? stickersByCategory,
    this.cart = const <Sticker>[],
    this.favorite = const <Sticker>[],
    this.light = true,
  })  : categories = categories ?? AppData.categories,
        stickers = stickers ?? AppData.stickers,
        stickersByCategory = stickersByCategory ?? AppData.stickers;

  @override
  List<Object?> get props => [categories, stickers, stickersByCategory, cart, favorite, light];

  StickerState copyWith({
    List<StickerCategory>? categories,
    List<Sticker>? stickers,
    List<Sticker>? stickersByCategory,
    List<Sticker>? cart,
    List<Sticker>? favorite,
    bool? light,
  }) {
    return StickerState(
      categories: categories ?? this.categories,
      stickers: stickers ?? this.stickers,
      stickersByCategory: stickersByCategory ?? this.stickersByCategory,
      cart: cart ?? this.cart,
      favorite: favorite ?? this.favorite,
      light: light ?? this.light,
    );
  }

  int getIndex(int stickerId) {
    int index = stickers.indexWhere((e) => e.id == stickerId);
    return index;
  }

  Sticker getStickerById(int stickerId) {
    return stickers[getIndex(stickerId)];
  }

  //Вспомогательные  методы
  String stickerPrice(Sticker sticker) {
    return (sticker.quantity * sticker.price).toString();
  }

  double get subtotal {
    double amount = 0.0;
    for (var e in cart) {
      amount = amount + e.price * e.quantity;
    }
    return amount;
  }
}
