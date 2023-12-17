part of 'cubit.dart';

// Define an abstract class for product details states
abstract class ProductDetailsState {}

// Initial state for product details
class ProductDetailsInitial extends ProductDetailsState {}

// State indicating a change in the selected image
class ChangeImageState extends ProductDetailsState {}

// State indicating a change in the selected color
class ChangeColorState extends ProductDetailsState {}

// State indicating a change in the selected size
class ChangeSizeState extends ProductDetailsState {}

// State indicating a change in the selected material
class ChangeMaterialState extends ProductDetailsState {}

// State indicating a change in the selected quantity
class ChangeQuantityState extends ProductDetailsState {}
