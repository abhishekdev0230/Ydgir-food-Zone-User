import 'package:Yadgir_Food/common/enums/data_source_enum.dart';
import 'package:Yadgir_Food/features/home/domain/models/banner_model.dart';
import 'package:Yadgir_Food/features/home/domain/models/cashback_model.dart';
import 'package:Yadgir_Food/interface/repository_interface.dart';

abstract class HomeRepositoryInterface extends RepositoryInterface {
  @override
  Future<BannerModel?> getList({int? offset, DataSourceEnum? source});
  Future<List<CashBackModel>?> getCashBackOfferList({DataSourceEnum? source});
  Future<CashBackModel?> getCashBackData(double amount);
}