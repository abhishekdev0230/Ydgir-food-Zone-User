import 'package:Yadgir_Food/common/enums/data_source_enum.dart';
import 'package:Yadgir_Food/features/home/domain/models/advertisement_model.dart';
import 'package:Yadgir_Food/interface/repository_interface.dart';

abstract class AdvertisementRepositoryInterface extends RepositoryInterface{
  @override
  Future<List<AdvertisementModel>?> getList({int? offset, DataSourceEnum? source});
}