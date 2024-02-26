import 'package:getx_clean_architecture/common/network/api_config.dart';
import 'package:getx_clean_architecture/features/user/data/models/user.dart';
import 'package:getx_clean_architecture/features/user/domain/entites/user_entity.dart';

const int tDummyId = 1;
const String tDummyName = 'dummy name';
const String tDummyBody = 'dummy body';
const String tDummyEmail = "dummyEmail@email.com";
const String tDummyDate = "2023-12-11T00:00:00.000+05:30";
const String tDummyExceptionMsg = "dummy Exception message";

const String tUserDummyUrl = "${ApiConfig.users}/$tDummyId";

const User tUserDummyObject = User(
  id: tDummyId,
  name: tDummyName,
  email: tDummyEmail,
  gender: Gender.male,
  status: UserStatus.inactive,
);
