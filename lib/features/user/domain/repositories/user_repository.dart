import 'package:dartz/dartz.dart';
import 'package:getx_clean_architecture/features/user/data/models/user.dart';
import 'package:getx_clean_architecture/features/user/domain/entites/user_entity.dart';

abstract class UserRepository {
  Future<Either<String, List<User>>> getUsers(
      {Gender? gender, UserStatus? status});
  Future<Either<String, bool>> createUser(User user);

  Future<Either<String, bool>> updateUser(User user);

  Future<Either<String, bool>> deleteUser(User user);
}
