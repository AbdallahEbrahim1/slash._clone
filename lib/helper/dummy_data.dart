import 'package:flutter/material.dart';
import 'package:slash_detailview/models/cart_item_model.dart';
import 'package:slash_detailview/models/product_model.dart';

final List<Product> products = [
  Product(
    id: 1,
    name: 'Neck T-Shirt ST100',
    description: "American Eagle Men Super Soft Icon T-Shirt ",
    brandId: 1,
    brandName: 'American Eagle',
    brandLogoUrl:
        'https://upload.wikimedia.org/wikipedia/ar/f/fe/American-eagle-outfitters-logo.png?20130809100513',
    rating: 5,
    variations: [
      ProductVariation(
        id: 1,
        productId: 1,
        price: 750,
        quantity: 24,
        inStock: true,
        productVarientImages: [
          'https://m.media-amazon.com/images/I/41S+9swCRBL._AC_SX679_.jpg',
          'https://m.media-amazon.com/images/I/31XHg7r72cL._AC_SX679_.jpg',
          'https://m.media-amazon.com/images/I/314TboSSC5L._AC_SX679_.jpg',
          'https://m.media-amazon.com/images/I/71voNFGyDyL._AC_SY879_.jpg',
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: 'black'),
          ProductPropertyAndValue(property: 'size', value: 'XL'),
          ProductPropertyAndValue(property: 'material', value: 'Cotton'),
        ],
      ),
      ProductVariation(
        id: 3,
        productId: 1,
        price: 850,
        quantity: 38,
        inStock: true,
        productVarientImages: [
          'https://m.media-amazon.com/images/I/51i3arxZZ7L._AC_SX679_.jpg',
          'https://m.media-amazon.com/images/I/61atJ6ibsUL._AC_SX679_.jpg',
          'https://m.media-amazon.com/images/I/713y144VOAL._AC_SY879_.jpg',
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: 'grey'),
          ProductPropertyAndValue(property: 'size', value: 'L'),
          ProductPropertyAndValue(property: 'material', value: 'Cotton'),
        ],
      ),
      ProductVariation(
        id: 2,
        productId: 1,
        price: 650,
        quantity: 3,
        inStock: true,
        productVarientImages: [
          'https://m.media-amazon.com/images/I/41e4DzPz2eL._AC_SX679_.jpg',
          'https://m.media-amazon.com/images/I/41YzM-9JxgL._AC_SX679_.jpg'
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: 'white'),
          ProductPropertyAndValue(property: 'size', value: 'M'),
          ProductPropertyAndValue(property: 'material', value: 'Cotton'),
        ],
      ),
    ],
    availableProperties: [
      ProductProperty(
        propertyName: 'color',
        propertyValues: [
          Colors.black,
          Colors.grey,
          Colors.white,
        ],
      ),
      ProductProperty(
        propertyName: 'size',
        propertyValues: [
          'M',
          'L',
          'XL',
        ],
      ),
      ProductProperty(
        propertyName: 'material',
        propertyValues: ['Cotton'],
      ),
    ],
  ),
  Product(
    id: 2,
    name: 'Sage Green Classic T-Shirt',
    description:
        "This t-shirt is made from smooth cotton-jersey spun from long staple Egyptian cotton fibres that ensure softness and durability. It's lightweight and breathable, making it ideal as a base layer under an overshirt or sweater, or as standalone t-shirt.",
    brandId: 2,
    brandName: 'onyu',
    brandLogoUrl:
        'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/352526017_807364164080463_2175349675576047598_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=2An6aLPm8fcAX8t-Cxi&_nc_ht=scontent.fcai21-2.fna&oh=00_AfApYZhVK-K0w_LzktpMFjymvXhMsOwmYIenWUYUhBrwrw&oe=6583ABA2',
    rating: 5,
    variations: [
      ProductVariation(
        id: 2,
        productId: 2,
        price: 390,
        quantity: 19,
        inStock: true,
        productVarientImages: [
          'https://onyuclothing.com/cdn/shop/files/ClassicT-ShirtSageGreen.jpg?v=1690373164',
          'https://onyuclothing.com/cdn/shop/files/Sagegreent-shirt.jpg?v=1690373164',
          'https://onyuclothing.com/cdn/shop/files/ClassicT-ShirtSageGreen-2.jpg?v=1690373176',
          'https://onyuclothing.com/cdn/shop/files/ClassicT-ShirtSageGreen-3.jpg?v=1690373179',
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: 'green'),
          ProductPropertyAndValue(property: 'size', value: 'XL'),
          ProductPropertyAndValue(property: 'material', value: 'Cotton'),
        ],
      ),
    ],
    availableProperties: [
      ProductProperty(
        propertyName: 'color',
        propertyValues: [
          Colors.green,
        ],
      ),
      ProductProperty(
        propertyName: 'size',
        propertyValues: [
          'XL',
        ],
      ),
      ProductProperty(
        propertyName: 'material',
        propertyValues: ['Cotton'],
      ),
    ],
  ),
  Product(
    id: 3,
    name: 'male t-shirts',
    description:
        "This Ravin printed t-shirt will give your casual wardrobe a useful new piece. When the weather outside gets cool, this printed t-shirt may be simply layered. It is made of cotton and has a solid colour for all-day wear. In a classic rounded neck design with a stylish front print. For year-round wear, pair it with dark jeans or shorts or use it as a layering piece under a sleeveless vest or jacket.",
    brandId: 2,
    brandName: 'RAVIN',
    brandLogoUrl:
        'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/394190088_718586616979997_5626866094725989359_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=0iJpbBpO7GQAX_u-v0R&_nc_ht=scontent.fcai21-2.fna&oh=00_AfCyJRL13kce8QZOcvx989OCg0owYShoIgxH0jFObN95cQ&oe=6583B5E3',
    rating: 5,
    variations: [
      ProductVariation(
        id: 2,
        productId: 2,
        price: 390,
        quantity: 19,
        inStock: true,
        productVarientImages: [
          'https://shop.iravin.com/cdn/shop/files/o170318a_dc0b36e0-86eb-4cda-b26e-5bdd27ec6d76.jpg?v=1692876788',
          'https://shop.iravin.com/cdn/shop/files/o170318b.jpg?v=1692876788',
          'https://shop.iravin.com/cdn/shop/files/o170318c.jpg?v=1692876788',
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: 'BLACK'),
          ProductPropertyAndValue(property: 'size', value: 'M'),
          ProductPropertyAndValue(property: 'material', value: 'Cotton'),
        ],
      ),
    ],
    availableProperties: [
      ProductProperty(
        propertyName: 'color',
        propertyValues: [
          Colors.black,
        ],
      ),
      ProductProperty(
        propertyName: 'size',
        propertyValues: [
          'M',
        ],
      ),
      ProductProperty(
        propertyName: 'material',
        propertyValues: [
          'Cotton',
        ],
      ),
    ],
  ),
  Product(
    id: 4,
    name: 'Brown Checkered Overshirt',
    description:
        "An overshirt is your essential layering choice for those in-between seasons. Featuring a modern check pattern, this shirt is crafted from durable heavyweight cotton and boasts a relaxed fit, allowing you to layer comfortably underneath. For a balanced look, contrast the pattern with a plain tee or sweater.",
    brandId: 4,
    brandName: 'onyu',
    brandLogoUrl:
        'https://scontent.fcai21-2.fna.fbcdn.net/v/t39.30808-6/352526017_807364164080463_2175349675576047598_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=2An6aLPm8fcAX8t-Cxi&_nc_ht=scontent.fcai21-2.fna&oh=00_AfApYZhVK-K0w_LzktpMFjymvXhMsOwmYIenWUYUhBrwrw&oe=6583ABA2',
    rating: 3,
    variations: [
      ProductVariation(
        id: 2,
        productId: 2,
        price: 1100,
        quantity: 19,
        inStock: true,
        productVarientImages: [
          'https://onyuclothing.com/cdn/shop/files/IMG_4142_1296x.jpg?v=1698246592',
          'https://onyuclothing.com/cdn/shop/files/IMG_4130_1296x.jpg?v=1698246592',
          'https://onyuclothing.com/cdn/shop/files/IMG_4138_1296x.jpg?v=1698246592',
          'https://onyuclothing.com/cdn/shop/files/IMG_4150_1296x.jpg?v=1698246663',
        ],
        productPropertiesValues: [
          ProductPropertyAndValue(property: 'color', value: 'BLACK'),
          ProductPropertyAndValue(property: 'size', value: 'M'),
          ProductPropertyAndValue(property: 'material', value: 'Cotton'),
        ],
      ),
    ],
    availableProperties: [
      ProductProperty(
        propertyName: 'color',
        propertyValues: [
          Colors.black,
        ],
      ),
      ProductProperty(
        propertyName: 'size',
        propertyValues: [
          'M',
        ],
      ),
      ProductProperty(
        propertyName: 'material',
        propertyValues: [
          'Cotton',
        ],
      ),
    ],
  ),
];

final List<CartItem> cartItems = [
  CartItem(
    productVariationId: 1,
    quantity: 10,
  ),
  CartItem(
    productVariationId: 1,
    quantity: 10,
  ),
];
