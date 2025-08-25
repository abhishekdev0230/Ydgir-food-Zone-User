import 'package:Yadgir_Food/common/models/response_model.dart';
import 'package:Yadgir_Food/features/profile/domain/models/update_user_model.dart';
import 'package:Yadgir_Food/features/profile/domain/models/userinfo_model.dart';
import 'package:Yadgir_Food/interface/repository_interface.dart';
import 'package:image_picker/image_picker.dart';

abstract class ProfileRepositoryInterface extends RepositoryInterface {
  Future<ResponseModel> updateProfile(UpdateUserModel userInfoModel, XFile? data, String token);
  Future<ResponseModel> changePassword(UserInfoModel userInfoModel);
}