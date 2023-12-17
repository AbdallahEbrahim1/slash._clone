class Product {
  final int id;
  final String name;
  final String description;
  final int brandId;
  final String? brandName;
  final String? brandLogoUrl;
  final double rating;
  final List<ProductVariation> variations;
  final List<ProductProperty> availableProperties;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.brandId,
      required this.brandName,
      required this.brandLogoUrl,
      required this.rating,
      required this.variations,
      required this.availableProperties});
}

class ProductVariation {
  final int id;
  final int productId;
  final num price;
  final int quantity;
  final bool inStock;
  final List<String> productVarientImages;
  final List<ProductPropertyAndValue> productPropertiesValues;

  ProductVariation({
    required this.productPropertiesValues,
    required this.id,
    required this.productId,
    required this.price,
    required this.quantity,
    required this.inStock,
    required this.productVarientImages,
  });
}

class ProductPropertyAndValue {
  final String property;
  final String value;

  ProductPropertyAndValue({
    required this.property,
    required this.value,
  });
}

class ProductProperty {
  final String propertyName;
  final List propertyValues;

  ProductProperty({
    required this.propertyName,
    required this.propertyValues,
  });
}
