import 'package:openfoodfacts/utils/LanguageHelper.dart';

/// Fields of a [Product]
enum ProductField {
  BARCODE,
  NAME,
  NAME_TRANSLATED,
  GENERIC_NAME,
  BRANDS,
  BRANDS_TAGS,
  COUNTRIES,
  COUNTRIES_TAGS,
  COUNTRIES_TAGS_TRANSLATED,
  LANGUAGE,
  QUANTITY,
  SERVING_SIZE,
  PACKAGING_QUANTITY,
  FRONT_IMAGE,
  SELECTED_IMAGE,
  IMAGE_FRONT_URL,
  IMAGE_FRONT_SMALL_URL,
  IMAGE_INGREDIENTS_URL,
  IMAGE_INGREDIENTS_SMALL_URL,
  IMAGE_NUTRITION_URL,
  IMAGE_NUTRITION_SMALL_URL,
  IMAGE_PACKAGING_URL,
  IMAGE_PACKAGING_SMALL_URL,
  IMAGES,
  INGREDIENTS,
  INGREDIENTS_TAGS,
  INGREDIENTS_TAGS_TRANSLATED,
  NUTRIMENTS,
  ADDITIVES,
  NUTRIENT_LEVELS,
  INGREDIENTS_TEXT,
  INGREDIENTS_TEXT_TRANSLATED,
  NUTRIMENT_ENERGY_UNIT,
  NUTRIMENT_DATA_PER,
  NUTRISCORE,
  CATEGORIES,
  CATEGORIES_TAGS,
  CATEGORIES_TAGS_TRANSLATED,
  LABELS_TAGS,
  LABELS_TAGS_TRANSLATED,
  MISC_TAGS,
  STATES_TAGS,
  TRACES_TAGS,
  INGREDIENTS_ANALYSIS_TAGS,
  ALLERGENS,
  ENVIRONMENT_IMPACT_LEVELS,
  ATTRIBUTE_GROUPS,
  ECOSCORE_GRADE,
  ECOSCORE_SCORE,
  ECOSCORE_DATA,
  ALL
}

extension ProductFieldExtension on ProductField {
  /// Returns the key of the product field
  String get key {
    switch (this) {
      case ProductField.BARCODE:
        return 'code';
      case ProductField.NAME:
        return 'product_name';
      case ProductField.NAME_TRANSLATED:
        return 'product_name_';
      case ProductField.GENERIC_NAME:
        return 'generic_name';
      case ProductField.BRANDS:
        return 'brands';
      case ProductField.BRANDS_TAGS:
        return 'brands_tags';
      case ProductField.COUNTRIES:
        return 'countries';
      case ProductField.COUNTRIES_TAGS:
        return 'countries_tags';
      case ProductField.COUNTRIES_TAGS_TRANSLATED:
        return 'countries_tags_';
      case ProductField.LANGUAGE:
        return 'lang';
      case ProductField.QUANTITY:
        return 'quantity';
      case ProductField.SERVING_SIZE:
        return 'serving_size';
      case ProductField.PACKAGING_QUANTITY:
        return 'product_quantity';
      case ProductField.FRONT_IMAGE:
        return 'image_small_url';
      case ProductField.IMAGE_FRONT_URL:
        return 'image_front_url';
      case ProductField.IMAGE_FRONT_SMALL_URL:
        return 'image_front_small_url';
      case ProductField.IMAGE_INGREDIENTS_URL:
        return 'image_ingredients_url';
      case ProductField.IMAGE_INGREDIENTS_SMALL_URL:
        return 'image_ingredients_small_url';
      case ProductField.IMAGE_NUTRITION_URL:
        return 'image_nutrition_url';
      case ProductField.IMAGE_NUTRITION_SMALL_URL:
        return 'image_nutrition_small_url';
      case ProductField.IMAGE_PACKAGING_URL:
        return 'image_packaging_url';
      case ProductField.IMAGE_PACKAGING_SMALL_URL:
        return 'image_packaging_small_url';
      case ProductField.SELECTED_IMAGE:
        return 'selected_images';
      case ProductField.IMAGES:
        return 'images';
      case ProductField.INGREDIENTS:
        return 'ingredients';
      case ProductField.INGREDIENTS_TAGS:
        return 'ingredients_tags';
      case ProductField.INGREDIENTS_TAGS_TRANSLATED:
        return 'ingredients_tags_';
      case ProductField.NUTRIMENTS:
        return 'nutriments';
      case ProductField.ADDITIVES:
        return 'additives_tags';
      case ProductField.NUTRIENT_LEVELS:
        return 'nutrient_levels';
      case ProductField.INGREDIENTS_TEXT:
        return 'ingredients_text';
      case ProductField.INGREDIENTS_TEXT_TRANSLATED:
        return 'ingredients_text_';
      case ProductField.NUTRIMENT_ENERGY_UNIT:
        return 'nutriment_energy_unit';
      case ProductField.NUTRIMENT_DATA_PER:
        return 'nutrition_data_per';
      case ProductField.NUTRISCORE:
        return 'nutrition_grade_fr';
      case ProductField.CATEGORIES:
        return 'categories';
      case ProductField.CATEGORIES_TAGS:
        return 'categories_tags';
      case ProductField.CATEGORIES_TAGS_TRANSLATED:
        return 'categories_tags_';
      case ProductField.LABELS_TAGS:
        return 'labels_tags';
      case ProductField.LABELS_TAGS_TRANSLATED:
        return 'labels_tags_';
      case ProductField.MISC_TAGS:
        return 'misc';
      case ProductField.STATES_TAGS:
        return 'states_tags';
      case ProductField.TRACES_TAGS:
        return 'traces_tags';
      case ProductField.INGREDIENTS_ANALYSIS_TAGS:
        return 'ingredients_analysis_tags';
      case ProductField.ALLERGENS:
        return 'allergens_tags';
      case ProductField.ENVIRONMENT_IMPACT_LEVELS:
        return 'environment_impact_level_tags';
      case ProductField.ATTRIBUTE_GROUPS:
        return 'attribute_groups';
      case ProductField.ECOSCORE_GRADE:
        return 'ecoscore_grade';
      case ProductField.ECOSCORE_SCORE:
        return 'ecoscore_score';
      case ProductField.ECOSCORE_DATA:
        return 'ecoscore_data';
      default:
        return '';
    }
  }
}

/// NOTE: if one of the fields is TRANSLATED and [languages] is empty -
/// the function will throw.
List<String> convertFieldsToStrings(
    List<ProductField> fields, List<OpenFoodFactsLanguage> languages) {
  final fieldsStrings = <String>[];

  const translatedFields = [
    ProductField.CATEGORIES_TAGS_TRANSLATED,
    ProductField.LABELS_TAGS_TRANSLATED,
    ProductField.NAME_TRANSLATED,
    ProductField.COUNTRIES_TAGS_TRANSLATED,
    ProductField.INGREDIENTS_TEXT_TRANSLATED,
    ProductField.INGREDIENTS_TAGS_TRANSLATED,
  ];

  for (final field in fields) {
    if (translatedFields.contains(field)) {
      if (languages.isEmpty == null) {
        throw ArgumentError('Cannot request translated field without language');
      }
      for (final language in languages) {
        fieldsStrings.add('${field.key}${language.code}');
      }
    } else {
      fieldsStrings.add(field.key);
    }
  }

  return fieldsStrings;
}
