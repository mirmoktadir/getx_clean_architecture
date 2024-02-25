import 'package:dartz/dartz.dart';
import 'package:getx_clean_architecture/common/repository/repository_helper.dart';
import 'package:getx_clean_architecture/features/user/data/data_sources/user_remote_data_source.dart';
import 'package:getx_clean_architecture/features/user/data/models/user.dart';
import 'package:getx_clean_architecture/features/user/domain/repositories/user_repository.dart';

import '../../domain/entites/user_entity.dart';

class UserRepositoryImpl extends UserRepository with RepositoryHelper<User> {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<String, List<User>>> getUsers(
      {Gender? gender, UserStatus? status}) async {
    return checkItemsFailOrSuccess(
        remoteDataSource.getUsers(gender: gender, status: status));
  }

  @override
  Future<Either<String, bool>> createUser(User user) async {
    return checkItemFailOrSuccess(remoteDataSource.createUser(user));
  }

  @override
  Future<Either<String, bool>> updateUser(User user) async {
    return checkItemFailOrSuccess(remoteDataSource.updateUser(user));
  }

  @override
  Future<Either<String, bool>> deleteUser(User user) async {
    return checkItemFailOrSuccess(remoteDataSource.deleteUser(user));
  }
}
