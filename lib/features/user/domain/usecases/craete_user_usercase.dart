import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:getx_clean_architecture/common/usecase/usecase.dart';
import 'package:getx_clean_architecture/features/user/data/models/user.dart';
import 'package:getx_clean_architecture/features/user/domain/repositories/user_repository.dart';

@immutable
class CreateUserUserCase implements UseCase<bool, CreateUserParams> {
  final UserRepository userRepository;

  const CreateUserUserCase(this.userRepository);
  @override
  Future<Either<String, bool>> call(CreateUserParams params) async {
    return await userRepository.createUser(params.user);
  }
}

@immutable
class CreateUserParams {
  final User user;

  const CreateUserParams({required this.user});
}
