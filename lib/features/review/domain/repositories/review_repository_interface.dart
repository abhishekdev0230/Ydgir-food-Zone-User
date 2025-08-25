import 'package:Yadgir_Food/common/enums/data_source_enum.dart';
import 'package:Yadgir_Food/common/models/product_model.dart';
import 'package:Yadgir_Food/common/models/response_model.dart';
import 'package:Yadgir_Food/common/models/review_model.dart';
import 'package:Yadgir_Food/features/product/domain/models/review_body_model.dart';
import 'package:Yadgir_Food/interface/repository_interface.dart';

abstract class ReviewRepositoryInterface extends RepositoryInterface {
  @override
  Future<List<Product>?> getList({int? offset, String type, DataSourceEnum? source});
  Future<ResponseModel> submitReview(ReviewBodyModel reviewBody, bool isProduct);
  Future<List<ReviewModel>?> getRestaurantReviewList(String? restaurantID);
}