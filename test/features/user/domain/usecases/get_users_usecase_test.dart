import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getx_clean_architecture/features/user/data/models/user.dart';
import 'package:getx_clean_architecture/features/user/domain/usecases/get_users_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../../test_utils/data/test_data.dart';
import 'create_user_usecase_test.mocks.dart';

void main() {
  late GetUsersUseCase getUsersUseCase;
  late MockUserRepository mockUserRepository;

  setUp(
    () {
      mockUserRepository = MockUserRepository();
      getUsersUseCase = GetUsersUseCase(mockUserRepository);
    },
  );

  test(
    'Should call getUsers from user repository',
    () async {
      when(mockUserRepository.getUsers()).thenAnswer(
        (_) async => const Right<String, List<User>>([tUserDummyObject]),
      );

      final result = await getUsersUseCase.call(
        const GetUsersParams(),
      );

      result.fold(
        (_) {},
        (List<User> users) => expect(users, [tUserDummyObject]),
      );

      verify(mockUserRepository.getUsers());

      verifyNoMoreInteractions(mockUserRepository);
    },
  );
}
