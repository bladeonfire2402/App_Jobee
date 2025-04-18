class Welcome {
    int id;
    String? brand;
    String name;
    String? price;
    PriceSign? priceSign;
    Currency? currency;
    String imageLink;
    String productLink;
    String websiteLink;
    String? description;
    double? rating;
    Category? category;
    ProductType productType;
    List<String> tagList;
    DateTime createdAt;
    DateTime updatedAt;
    String productApiUrl;
    String apiFeaturedImage;
    List<ProductColor> productColors;

    Welcome({
        required this.id,
        required this.brand,
        required this.name,
        required this.price,
        required this.priceSign,
        required this.currency,
        required this.imageLink,
        required this.productLink,
        required this.websiteLink,
        required this.description,
        required this.rating,
        required this.category,
        required this.productType,
        required this.tagList,
        required this.createdAt,
        required this.updatedAt,
        required this.productApiUrl,
        required this.apiFeaturedImage,
        required this.productColors,
    });

}

enum Category {
    BB_CC,
    CONCEALER,
    CONTOUR,
    CREAM,
    EMPTY,
    GEL,
    HIGHLIGHTER,
    LIPSTICK,
    LIP_GLOSS,
    LIP_STAIN,
    LIQUID,
    MINERAL,
    PALETTE,
    PENCIL,
    POWDER
}

enum Currency {
    CAD,
    GBP,
    USD
}

enum PriceSign {
    EMPTY,
    PRICE_SIGN
}

class ProductColor {
    String hexValue;
    String? colourName;

    ProductColor({
        required this.hexValue,
        required this.colourName,
    });

}

enum ProductType {
    BLUSH,
    BRONZER,
    EYEBROW,
    EYELINER,
    EYESHADOW,
    FOUNDATION,
    LIPSTICK,
    LIP_LINER,
    MASCARA,
    NAIL_POLISH
}
  