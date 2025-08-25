import 'package:Yadgir_Food/common/enums/data_source_enum.dart';
import 'package:Yadgir_Food/features/home/domain/models/advertisement_model.dart';

abstract class AdvertisementServiceInterface {
  Future<List<AdvertisementModel>?> getAdvertisementList({required DataSourceEnum source});
}