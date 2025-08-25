import 'package:Yadgir_Food/common/enums/data_source_enum.dart';
import 'package:Yadgir_Food/features/cuisine/domain/models/cuisine_model.dart';
import 'package:Yadgir_Food/features/cuisine/domain/models/cuisine_restaurants_model.dart';
import 'package:Yadgir_Food/interface/repository_interface.dart';

abstract class CuisineRepositoryInterface extends RepositoryInterface{
  @override
  Future<CuisineModel?> getList({int? offset, DataSourceEnum? source});
  Future<CuisineRestaurantModel?> getRestaurantList(int offset, int cuisineId);
}