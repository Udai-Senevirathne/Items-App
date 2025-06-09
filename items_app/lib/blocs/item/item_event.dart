abstract class ItemEvent {}

class LoadItems extends ItemEvent {}

class SelectItem extends ItemEvent {
  final int itemId;

  SelectItem(this.itemId);
}
