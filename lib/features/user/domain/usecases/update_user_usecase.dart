import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:getx_clean_architecture/common/usecase/usecase.dart';
import 'package:getx_clean_architecture/features/user/data/models/user.dart';
import 'package:getx_clean_architecture/features/user/domain/repositories/user_repository.dart';

@immutable
class UpdateUserUseCase implements UseCase<bool, UpdateUserParams> {
  final UserRepository userRepository;

  const UpdateUserUseCase(this.userRepository);

  @override
  Future<Either<String, bool>> call(UpdateUserParams params) async {
    return await userRepository.updateUser(params.user);
  }
}

@immutable
class UpdateUserParams {
  final User user;

  const UpdateUserParams(this.user);
}
