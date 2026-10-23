import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/_data.dart';
import 'sticker_state.dart';

class StickerCubit extends Cubit<StickerState> {
  StickerCubit() : super(StickerState());

  //Действия
  Future<void> onCategoryTap(StickerCategory category) async {
    final categories = state.categories.map((e) {
      if (e.type == category.type) {
        return e.copyWith(isSelected: true);
      } else {
        return e.copyWith(isSelected: false);
      }
    }).toList();

    final List<Sticker> stickersByCategory;
    if (category.type == StickerType.all) {
      stickersByCategory = state.stickers;
    } else {
      stickersByCategory = state.stickers.where((e) => e.type == category.type).toList();
    }
    emit(state.copyWith(categories: categories, stickersByCategory: stickersByCategory));
  }

  Future<void> onIncreaseQuantityTap(int stickerId) async {
    final stickers = state.stickers.map((e) {
      if (e.id == stickerId) {
        return e.copyWith(quantity: e.quantity + 1);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(stickers: stickers, cart: stickers.where((e) => e.cart).toList()));
  }

  Future<void> onDecreaseQuantityTap(int stickerId) async {
    final stickers = state.stickers.map((e) {
      if (e.id == stickerId) {
        return e.quantity == 1 ? e : e.copyWith(quantity: e.quantity - 1);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(stickers: stickers, cart: stickers.where((e) => e.cart).toList()));
  }

  Future<void> onAddToCartTap(int stickerId) async {
    final stickers = state.stickers.map((e) {
      if (e.id == stickerId) {
        return e.copyWith(cart: true);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(stickers: stickers, cart: stickers.where((e) => e.cart).toList()));
  }

  Future<void> onRemoveFromCartTap(int stickerId) async {
    final stickers = state.stickers.map((e) {
      if (e.id == stickerId) {
        return e.copyWith(cart: false, quantity: 1);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(stickers: stickers, cart: stickers.where((e) => e.cart).toList()));
  }

  Future<void> onCheckOutTap() async {
    Set<int> cartIds = <int>{};
    for (var item in state.cart) {
      cartIds.add(item.id);
    }
    final stickers = state.stickers.map((e) {
      if (cartIds.contains(e.id)) {
        return e.copyWith(cart: false, quantity: 1);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(stickers: stickers, cart: stickers.where((e) => e.cart).toList()));
  }

  Future<void> onAddRemoveFavoriteTap(int stickerId) async {
    final stickers = state.stickers.map((e) {
      if (e.id == stickerId) {
        return e.copyWith(favorite: !e.favorite);
      } else {
        return e;
      }
    }).toList();
    emit(state.copyWith(
      stickers: stickers,
      cart: stickers.where((e) => e.cart).toList(),
      favorite: stickers.where((e) => e.favorite).toList(),
    ));
  }

  void toggleTheme() {
    emit(state.copyWith(light: !state.light));
  }

  // 14 шагов логики
  //
  //
  // 1.  Подсветка выбранной категории
  // 2.  Продукты по категории
  // 3.  Детали: отображение продукта
  // 4.  Детали: количество
  // 5.  Корзина: управление пустой корзиной
  // 6.  Детали: добавление в корзину
  // 7.  Корзина: список в корзине
  // 8.  Корзина: стоимость корзины
  // 9.  Корзина: количество
  // 10. Корзина: удаление
  // 11. Корзина: чистка корзина на checkout
  // 12. Любимые: управление пустым экраном
  // 13. Детали: Добавление/удаление любимые
  // 14. Смена темы
}
