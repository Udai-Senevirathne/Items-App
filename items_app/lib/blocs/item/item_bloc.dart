import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/item.dart';
import 'item_event.dart';
import 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  ItemBloc() : super(ItemInitial()) {
    on<LoadItems>(_onLoadItems);
    on<SelectItem>(_onSelectItem);
  }

  void _onLoadItems(LoadItems event, Emitter<ItemState> emit) {
    emit(ItemLoading());
    try {
      final items = [
        Item(
          id: 1,
          title: 'Smartphones',
          description: 'Latest model with advanced features',
          imageUrl: 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
        Item(
          id: 2,
          title: 'Laptops',
          description: 'High-performance laptop for work and gaming',
          imageUrl: 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
        Item(
          id: 3,
          title: 'Headphones',
          description: 'Noise-cancelling wireless headphones',
          imageUrl: 'https://images.pexels.com/photos/159853/headphones-headset-audio-equipment-sound-159853.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
        Item(
          id: 4,
          title: 'Smart Watches',
          description: 'Fitness tracker and smart notifications',
          imageUrl: 'https://images.pexels.com/photos/267394/pexels-photo-267394.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
        Item(
          id: 5,
          title: 'Cameras',
          description: 'Professional DSLR camera',
          imageUrl: 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
        Item(
          id: 6,
          title: 'Tablets',
          description: 'Portable tablet with stylus support',
          imageUrl: 'https://images.pexels.com/photos/5082571/pexels-photo-5082571.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        ),
      ];
      emit(ItemsLoaded(items: items));
    } catch (e) {
      emit(ItemError(e.toString()));
    }
  }

  void _onSelectItem(SelectItem event, Emitter<ItemState> emit) {
    if (state is ItemsLoaded) {
      final currentState = state as ItemsLoaded;
      final selectedItem = currentState.items.firstWhere(
        (item) => item.id == event.itemId,
      );
      emit(currentState.copyWith(selectedItem: selectedItem));
    }
  }
}
