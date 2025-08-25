import 'package:Yadgir_Food/common/enums/data_source_enum.dart';
import 'package:Yadgir_Food/common/models/product_model.dart';
import 'package:Yadgir_Food/common/models/restaurant_model.dart';
import 'package:Yadgir_Food/features/category/domain/models/category_model.dart';
import 'package:get/get_connect/connect.dart';

abstract class CategoryServiceInterface{
  Future<List<CategoryModel>?> getCategoryList({DataSourceEnum? source});
  Future<List<CategoryModel>?> getSubCategoryList(String? parentID);
  Future<ProductModel?> getCategoryProductList(String? categoryID, int offset, String type);
  Future<RestaurantModel?> getCategoryRestaurantList(String? categoryID, int offset, String type);
  Future<Response> getSearchData(String? query, String? categoryID, bool isRestaurant, String type);
}