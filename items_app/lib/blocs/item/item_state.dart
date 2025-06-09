import '../../models/item.dart';

abstract class ItemState {}

class ItemInitial extends ItemState {}

class ItemLoading extends ItemState {}

class ItemsLoaded extends ItemState {
  final List<Item> items;
  final Item? selectedItem;

  ItemsLoaded({required this.items, this.selectedItem});

  ItemsLoaded copyWith({List<Item>? items, Item? selectedItem}) {
    return ItemsLoaded(
      items: items ?? this.items,
      selectedItem: selectedItem ?? this.selectedItem,
    );
  }
}

class ItemError extends ItemState {
  final String message;

  ItemError(this.message);
}
