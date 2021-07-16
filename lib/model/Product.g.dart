// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product(
    barcode: json['code'] as String?,
    productName: json['product_name'] as String?,
    productNameTranslated: LanguageHelper.fromJsonStringMap(
        json['product_name_translated'] as Map<String, String>?),
    productNameDE: json['product_name_de'] as String?,
    productNameEN: json['product_name_en'] as String?,
    productNameFR: json['product_name_fr'] as String?,
    brands: json['brands'] as String?,
    brandsTags: (json['brands_tags'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    countries: json['countries'] as String?,
    countriesTags: (json['countries_tags'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    countriesTagsTranslated: LanguageHelper.fromJsonStringsListMap(
        json['countries_tags_translated'] as Map<String, List<String>>?),
    lang: LanguageHelper.fromJson(json['lang'] as String?),
    quantity: json['quantity'] as String?,
    imgSmallUrl: json['image_small_url'] as String?,
    imageFrontUrl: json['image_front_url'] as String?,
    imageFrontSmallUrl: json['image_front_small_url'] as String?,
    imageIngredientsUrl: json['image_ingredients_url'] as String?,
    imageIngredientsSmallUrl: json['image_ingredients_small_url'] as String?,
    imageNutritionUrl: json['image_nutrition_url'] as String?,
    imageNutritionSmallUrl: json['image_nutrition_small_url'] as String?,
    imagePackagingUrl: json['image_packaging_url'] as String?,
    imagePackagingSmallUrl: json['image_packaging_small_url'] as String?,
    servingSize: json['serving_size'] as String?,
    servingQuantity:
        JsonHelper.servingQuantityFromJson(json['serving_quantity']),
    packagingQuantity: json['product_quantity'],
    selectedImages:
        JsonHelper.selectedImagesFromJson(json['selected_images'] as Map?),
    images: JsonHelper.imagesFromJson(json['images'] as Map?),
    ingredients: (json['ingredients'] as List<dynamic>?)
        ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
        .toList(),
    ingredientsText: json['ingredients_text'] as String?,
    ingredientsTextTranslated: LanguageHelper.fromJsonStringMap(
        json['ingredients_text_translated'] as Map<String, String>?),
    ingredientsTags: (json['ingredients_tags'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    ingredientsTagsTranslated: LanguageHelper.fromJsonStringsListMap(
        json['ingredients_tags_translated'] as Map<String, List<String>>?),
    ingredientsTextDE: json['ingredients_text_de'] as String?,
    ingredientsTextEN: json['ingredients_text_en'] as String?,
    ingredientsTextFR: json['ingredients_text_fr'] as String?,
    ingredientsAnalysisTags: IngredientsAnalysisTags.fromJson(
        json['ingredients_analysis_tags'] as List?),
    nutriments: json['nutriments'] == null
        ? null
        : Nutriments.fromJson(json['nutriments'] as Map<String, dynamic>),
    additives: Additives.additivesFromJson(json['additives_tags'] as List?),
    environmentImpactLevels: EnvironmentImpactLevels.fromJson(
        json['environment_impact_level_tags'] as List?),
    allergens: Allergens.allergensFromJson(json['allergens_tags'] as List?),
    nutrientLevels: NutrientLevels.fromJson(json['nutrient_levels'] as Map?),
    nutrimentEnergyUnit: json['nutriment_energy_unit'] as String?,
    nutrimentDataPer: json['nutrition_data_per'] as String?,
    nutriscore: json['nutrition_grade_fr'] as String?,
    categories: json['categories'] as String?,
    categoriesTags: (json['categories_tags'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    categoriesTagsTranslated: LanguageHelper.fromJsonStringsListMap(
        json['categories_tags_translated'] as Map<String, List<String>>?),
    labels: json['labels'] as String?,
    labelsTags: (json['labels_tags'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    labelsTagsTranslated: LanguageHelper.fromJsonStringsListMap(
        json['labels_tags_translated'] as Map<String, List<String>>?),
    packaging: json['packaging'] as String?,
    packagingTags: (json['packaging_tags'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    miscTags:
        (json['misc'] as List<dynamic>?)?.map((e) => e as String).toList(),
    statesTags: (json['states_tags'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    tracesTags: (json['traces_tags'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    storesTags: (json['stores_tags'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    attributeGroups: (json['attribute_groups'] as List<dynamic>?)
        ?.map((e) => AttributeGroup.fromJson(e))
        .toList(),
    lastModified: JsonHelper.timestampToDate(json['last_modified_t']),
    ecoscoreGrade: json['ecoscore_grade'] as String?,
    ecoscoreScore: JsonObject.parseDouble(json['ecoscore_score']),
    ecoscoreData: json['ecoscore_data'] == null
        ? null
        : EcoscoreData.fromJson(json['ecoscore_data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductToJson(Product instance) {
  final val = <String, dynamic>{
    'code': instance.barcode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_name', instance.productName);
  writeNotNull('product_name_translated',
      LanguageHelper.toJsonStringMap(instance.productNameTranslated));
  writeNotNull('product_name_de', instance.productNameDE);
  writeNotNull('product_name_en', instance.productNameEN);
  writeNotNull('product_name_fr', instance.productNameFR);
  writeNotNull('brands', instance.brands);
  writeNotNull('brands_tags', instance.brandsTags);
  writeNotNull('countries', instance.countries);
  writeNotNull('countries_tags', instance.countriesTags);
  writeNotNull('countries_tags_translated',
      LanguageHelper.toJsonStringsListMap(instance.countriesTagsTranslated));
  writeNotNull('lang', LanguageHelper.toJson(instance.lang));
  writeNotNull('quantity', instance.quantity);
  writeNotNull('image_small_url', instance.imgSmallUrl);
  writeNotNull('image_front_url', instance.imageFrontUrl);
  writeNotNull('image_front_small_url', instance.imageFrontSmallUrl);
  writeNotNull('image_ingredients_url', instance.imageIngredientsUrl);
  writeNotNull(
      'image_ingredients_small_url', instance.imageIngredientsSmallUrl);
  writeNotNull('image_nutrition_url', instance.imageNutritionUrl);
  writeNotNull('image_nutrition_small_url', instance.imageNutritionSmallUrl);
  writeNotNull('image_packaging_url', instance.imagePackagingUrl);
  writeNotNull('image_packaging_small_url', instance.imagePackagingSmallUrl);
  writeNotNull('serving_size', instance.servingSize);
  writeNotNull('serving_quantity', instance.servingQuantity);
  writeNotNull('product_quantity', instance.packagingQuantity);
  writeNotNull('selected_images',
      JsonHelper.selectedImagesToJson(instance.selectedImages));
  writeNotNull('images', JsonHelper.imagesToJson(instance.images));
  writeNotNull(
      'ingredients', JsonHelper.ingredientsToJson(instance.ingredients));
  writeNotNull('ingredients_text', instance.ingredientsText);
  writeNotNull('ingredients_text_translated',
      LanguageHelper.toJsonStringMap(instance.ingredientsTextTranslated));
  writeNotNull('ingredients_tags', instance.ingredientsTags);
  writeNotNull('ingredients_tags_translated',
      LanguageHelper.toJsonStringsListMap(instance.ingredientsTagsTranslated));
  writeNotNull('ingredients_text_de', instance.ingredientsTextDE);
  writeNotNull('ingredients_text_en', instance.ingredientsTextEN);
  writeNotNull('ingredients_text_fr', instance.ingredientsTextFR);
  writeNotNull('ingredients_analysis_tags',
      IngredientsAnalysisTags.toJson(instance.ingredientsAnalysisTags));
  writeNotNull('nutriments', Nutriments.toJsonHelper(instance.nutriments));
  writeNotNull('additives_tags', Additives.additivesToJson(instance.additives));
  writeNotNull('environment_impact_level_tags',
      EnvironmentImpactLevels.toJson(instance.environmentImpactLevels));
  writeNotNull('allergens_tags', Allergens.allergensToJson(instance.allergens));
  writeNotNull(
      'nutrient_levels', NutrientLevels.toJson(instance.nutrientLevels));
  writeNotNull('nutriment_energy_unit', instance.nutrimentEnergyUnit);
  writeNotNull('nutrition_data_per', instance.nutrimentDataPer);
  writeNotNull('nutrition_grade_fr', instance.nutriscore);
  writeNotNull('categories', instance.categories);
  writeNotNull('categories_tags', instance.categoriesTags);
  writeNotNull('categories_tags_translated',
      LanguageHelper.toJsonStringsListMap(instance.categoriesTagsTranslated));
  writeNotNull('labels', instance.labels);
  writeNotNull('labels_tags', instance.labelsTags);
  writeNotNull('labels_tags_translated',
      LanguageHelper.toJsonStringsListMap(instance.labelsTagsTranslated));
  writeNotNull('packaging', instance.packaging);
  writeNotNull('packaging_tags', instance.packagingTags);
  writeNotNull('misc', instance.miscTags);
  writeNotNull('states_tags', instance.statesTags);
  writeNotNull('traces_tags', instance.tracesTags);
  writeNotNull('stores_tags', instance.storesTags);
  writeNotNull('attribute_groups',
      JsonHelper.attributeGroupsToJson(instance.attributeGroups));
  writeNotNull(
      'last_modified_t', JsonHelper.dateToTimestamp(instance.lastModified));
  writeNotNull('ecoscore_grade', instance.ecoscoreGrade);
  writeNotNull('ecoscore_score', instance.ecoscoreScore);
  writeNotNull(
      'ecoscore_data', EcoscoreData.toJsonHelper(instance.ecoscoreData));
  return val;
}
