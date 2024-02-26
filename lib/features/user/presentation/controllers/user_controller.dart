import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:get/get.dart';
import 'package:getx_clean_architecture/common/controller/base_controller.dart';
import 'package:getx_clean_architecture/features/user/data/models/user.dart';
import 'package:getx_clean_architecture/features/user/domain/entites/user_entity.dart';
import 'package:getx_clean_architecture/features/user/domain/usecases/create_user_usecase.dart';
import 'package:getx_clean_architecture/features/user/domain/usecases/delete_user_usecase.dart';
import 'package:getx_clean_architecture/features/user/domain/usecases/get_users_usecase.dart';
import 'package:getx_clean_architecture/features/user/domain/usecases/update_user_usecase.dart';

class UserController extends GetxController
    with StateMixin<List<User>>, BaseController {
  final GetUsersUseCase getUsersUseCase;
  final CreateUserUseCase createUserUseCase;
  final UpdateUserUseCase updateUserUseCase;
  final DeleteUserUseCase deleteUserUseCase;

  UserController(
      {required this.getUsersUseCase,
      required this.createUserUseCase,
      required this.updateUserUseCase,
      required this.deleteUserUseCase});

  @visibleForTesting
  Either<String, List<User>>? failureOrSuccess;

  Future<void> createUser(User user) async {
    createItem(createUserUseCase.call(CreateUserParams(user)));
  }

  Future<void> updateUser(User user) async {
    updateItem(updateUserUseCase.call(UpdateUserParams(user)));
  }

  Future<void> deleteUser(User user) async {
    deleteItem(deleteUserUseCase.call(DeleteUserParams(user)));
  }

  Future<void> getUserList({
    Gender gender = Gender.all,
    UserStatus status = UserStatus.all,
  }) async {
    change(null, status: RxStatus.loading());
    failureOrSuccess = (await getUsersUseCase.call(
      GetUsersParams(gender: gender, status: status),
    ));
    failureOrSuccess!.fold((String failure) {
      change(null, status: RxStatus.error());
    }, (List<User> users) {
      if (users.isEmpty) {
        change(null, status: RxStatus.empty());
      } else {
        change(users, status: RxStatus.success());
      }
    });
  }
}
