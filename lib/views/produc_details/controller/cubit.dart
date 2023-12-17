import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(ProductDetailsInitial());

  // Track the currently selected image index
  int selectedImageIndex = 0;

  // Track selected options for customization elements
  int selectedColorIndex = 0;
  int selectedSizeIndex = 0;
  int selectedMaterialIndex = 0;

  // Update selected image
  void updateSelectedImage(int index) {
    selectedImageIndex = index;
    emit(ChangeImageState());
  }

  // Update selected color
  void updateSelectedColor(int index) {
    selectedColorIndex = index;
    emit(ChangeColorState());
  }

  // Update selected size
  void updateSelectedSize(int index) {
    selectedSizeIndex = index;
    emit(ChangeSizeState());
  }

  // Update selected material
  void updateSelectedMaterial(int index) {
    selectedMaterialIndex = index;
    emit(ChangeMaterialState());
  }

  // Manage product quantity
  int quantity = 1;

  void adjustQuantity(bool isIncrease) {
    if (isIncrease && quantity < 20) {
      quantity++;
    } else if (!isIncrease && quantity > 1) {
      quantity--;
    }
    emit(ChangeQuantityState());
  }
}
